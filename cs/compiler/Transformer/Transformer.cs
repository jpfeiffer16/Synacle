using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace compiler
{
  public class Transformer
  {
    private readonly List<AstNode> nodes;

    public Transformer(List<AstNode> nodes)
    {
      this.nodes = nodes;
    }

    public List<string> Transform()
    {
      var ctx = new Context();
      var lines = TransformAst(this.nodes, ctx);
      lines = EnsureSubtractSupport(ctx, lines);
      lines = EnsureNotSupport(ctx, lines);
      lines = EnsureDivisionSupport(ctx, lines);
      lines = EnsureAndSupport(ctx, lines);
      lines = EnsureOrSupport(ctx, lines);
      return lines;
    }
    private List<string> TransformAst(List<AstNode> ast, Context ctx)
    {
      var lines = new List<string>();
      for (var i = 0; i < ast.Count; i++)
      {
        var node = ast[i];
        var nodeType = node.GetType();

        if (nodeType == typeof(VariableDeclaration))
        {
          var vdNode = node as VariableDeclaration;



          var guid = Guid.NewGuid();
          lines.Add($"jmp >var_{guid.ToString()}_end");
          lines.Add($":var_{guid.ToString()}");
          lines.Add($":var_{guid.ToString()}_end");

          ctx.Variables.Add(new Variable()
          {
            Name = vdNode.Identifier,
            MemoryAddress = $"var_{guid.ToString()}"
          });
        }

        if (nodeType == typeof(FunctionDeclaration)) {
          var fcNode = node as FunctionDeclaration;

          lines.Add($"jmp >{fcNode.Name}_end");
          lines.Add($":{fcNode.Name}");
          ctx.Variables.Push();
          lines.AddRange(TransformAst(fcNode.Parameters, ctx));
          for (var index = 0; index < fcNode.Parameters.Count; index++) {
            var parameter = fcNode.Parameters[index];
            var variable = ctx.Variables.Get((parameter as VariableDeclaration).Identifier);
            lines.Add($"wmem >{variable.MemoryAddress} reg{index}");
          }
          lines.AddRange(TransformAst(fcNode.Expression, ctx));
          lines.Add("ret");
          lines.Add($":{fcNode.Name}_end");
          ctx.Variables.Pop();
        }

        if (nodeType == typeof(VariableAssignment))
        {
          var vaNode = node as VariableAssignment;

          Variable variable = null;

          if (vaNode.Identifier.GetType() == typeof(Identifier)) {
            variable = ctx.Variables.Get((vaNode.Identifier as Identifier).Name);
          } else if (vaNode.Identifier.GetType() == typeof(VariableDeclaration))  {
            lines.AddRange(TransformAst(new List<AstNode> { vaNode.Identifier }, ctx));
            variable = ctx.Variables.Get((vaNode.Identifier as VariableDeclaration).Identifier);
          }

          lines.AddRange(TransformAst(new List<AstNode> { vaNode.Parameter }, ctx));
          lines.Add($"wmem >{variable.MemoryAddress} reg0");
          
        }

        if (nodeType == typeof(Equal))
        {
          var eqNode = node as Equal;

          lines.AddRange(TransformAst(new List<AstNode> { eqNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { eqNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("eq reg0 reg0 reg1");
        }

        if (nodeType == typeof(Not)) {
          var notNode = node as Not;
          lines.AddRange(TransformAst(new List<AstNode> { notNode.Parameter }, ctx));
          lines.Add("call >not");
        }

        if (nodeType == typeof(And)) {
          var andNode = node as And;
          lines.AddRange(TransformAst(new List<AstNode> { andNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { andNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("call >and");
        }

        if (nodeType == typeof(Or)) {
          var andNode = node as Or;
          lines.AddRange(TransformAst(new List<AstNode> { andNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { andNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("call >or");
        }

        if (nodeType == typeof(GreaterThan))
        {
          var gtNode = node as GreaterThan;

          lines.AddRange(TransformAst(new List<AstNode> { gtNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { gtNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("gt reg0 reg0 reg1");
        }

        if (nodeType == typeof(GreaterThanOrEqual))
        {
          var gtNode = node as GreaterThanOrEqual;

          lines.AddRange(TransformAst(new List<AstNode> { gtNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { gtNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("gt reg2 reg0 reg1");
          lines.Add("eq reg3 reg0 reg1");
          lines.Add("or reg0 reg2 reg3");
        }

        if (nodeType == typeof(LessThan))
        {
          var ltNode = node as LessThan;

          lines.AddRange(TransformAst(new List<AstNode> { ltNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { ltNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("eq reg2 reg0 reg1");
          lines.Add("gt reg3 reg0 reg1");
          lines.Add("or reg0 reg2 reg3");
          lines.Add("call >not");
        }

        if (nodeType == typeof(LessThanOrEqual))
        {
          var ltNode = node as LessThanOrEqual;

          lines.AddRange(TransformAst(new List<AstNode> { ltNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { ltNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("gt reg0 reg0 reg1");

          lines.Add("call >not");
        }

        if (nodeType == typeof(Addition))
        {
          var addNode = node as Addition;
          lines.AddRange(TransformAst(new List<AstNode> { addNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { addNode.Right }, ctx));
          ctx.RegisterLevel--;

          lines.Add($"add reg0 reg0 reg1");
        }

        if (nodeType == typeof(Incr))
        {
          var incrNode = node as Incr;
          lines.AddRange(TransformAst(new List<AstNode> { incrNode.Parameter }, ctx));

          lines.Add($"add reg0 reg0 1");
          lines.Add($"wmem >{ctx.Variables.Get((incrNode.Parameter as Identifier).Name).MemoryAddress} reg0");
        }

        if (nodeType == typeof(Subtraction))
        {
          var sbNode = node as Subtraction;

          lines.AddRange(TransformAst(new List<AstNode> { sbNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { sbNode.Right }, ctx));
          ctx.RegisterLevel--;

          lines.Add($"call >subtract");
        }

        if (nodeType == typeof(Decr))
        {
          var dcNode = node as Decr;

          lines.AddRange(TransformAst(new List<AstNode> { dcNode.Parameter }, ctx));;
          lines.Add("set reg1 1");
          lines.Add($"call >subtract");
          lines.Add($"wmem >{ctx.Variables.Get((dcNode.Parameter as Identifier).Name).MemoryAddress} reg0");
        }

        if (nodeType == typeof(Multiplication))
        {
          var sbNode = node as Multiplication;

          lines.AddRange(TransformAst(new List<AstNode> { sbNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { sbNode.Right }, ctx));
          ctx.RegisterLevel--;

          lines.Add($"mult reg0 reg0 reg1");
        }


        if (nodeType == typeof(Division))
        {
          var sbNode = node as Division;

          lines.AddRange(TransformAst(new List<AstNode> { sbNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { sbNode.Right }, ctx));
          ctx.RegisterLevel--;

          lines.Add($"call >divide");
        }

        if (nodeType == typeof(Mod)) {
          var modNode = node as Mod;

          lines.AddRange(TransformAst(new List<AstNode> { modNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { modNode.Right }, ctx));
          ctx.RegisterLevel--;

          lines.Add($"mod reg0 reg0 reg1");
        }

        if (nodeType == typeof(If)) {
          var ifNode = node as If;

          var uuid = Guid.NewGuid();

          lines.AddRange(TransformAst(ifNode.Condition, ctx));
          lines.Add($"jf reg0 >end_{uuid}");
          lines.AddRange(TransformAst(ifNode.Expression, ctx));
          lines.Add($":end_{uuid}");
        }

        if (nodeType == typeof(While))
        {
          var whNode = node as While;
          var uuid = Guid.NewGuid();

          //Begin
          lines.Add($":while_{uuid}_begin");
          //Condition
          lines.AddRange(TransformAst(whNode.Condition, ctx));
          lines.Add($"jf reg0 >while_{uuid}_end");
          //Expression
          lines.AddRange(TransformAst(whNode.Expression, ctx));
          //End
          lines.Add($"jmp >while_{uuid}_begin");
          lines.Add($":while_{uuid}_end");
        }

        if (nodeType == typeof(FunctionCall))
        {
          var fcNode = node as FunctionCall;
          lines.AddRange(TransformAst(fcNode.Parameters, ctx));

          //Handle special cases
          if (fcNode.Name == "out")
          {
            lines.Add("out reg0");
          } else if (fcNode.Name == "in") {
            lines.Add("in reg0");
          } else if (fcNode.Name == "exit") {
            lines.Add("halt");
          } else if (fcNode.Name == "push") {
            lines.AddRange(TransformAst(fcNode.Parameters, ctx));
            lines.Add("push reg0");
          } else if (fcNode.Name == "pop") {
            lines.Add("pop reg0");
          } else {
            var originalRegisterLevel = ctx.RegisterLevel;
            foreach (var parameter in fcNode.Parameters) {
              lines.AddRange(TransformAst(new List<AstNode> { parameter }, ctx));
              ctx.RegisterLevel++;
            }
            ctx.RegisterLevel = originalRegisterLevel;
            lines.Add($"call >{fcNode.Name}");
          }
        }

        if (nodeType == typeof(Identifier))
        {
          var idNode = node as Identifier;

          // var variable = ctx.Variables.Find(vr => vr.Name == idNode.Name);
          var variable = ctx.Variables.Get(idNode.Name);

          lines.Add($"rmem reg{ctx.RegisterLevel} >{variable.MemoryAddress}");
        }

        if (nodeType == typeof(IntegerLiteral))
        {
          var inNode = node as IntegerLiteral;

          lines.Add($"set reg{ctx.RegisterLevel} {inNode.Value}");
        }

        //TODO: Add params here when needed
        if (nodeType == typeof(Return)) {
          var returnNode = node as Return;
          if (returnNode.Parameter != null) {
            lines.AddRange(
              TransformAst(new List<AstNode> { returnNode.Parameter }, ctx)
            );
          }
          lines.Add("ret");
        }

        if (nodeType == typeof(AddressOf)) {
          var adofNode = node as AddressOf;
          var variable = ctx.Variables.Get((adofNode.Parameter as Identifier).Name);
          lines.Add($"set reg0 >{variable.MemoryAddress}");
        }

        if (nodeType == typeof(Deref)) {
          var adofNode = node as Deref;
          lines.AddRange(TransformAst(new List<AstNode> { adofNode.Parameter }, ctx));
          lines.Add($"rmem reg0 reg0");
        }

        if (nodeType == typeof(StringLiteral)) {
          var strNode = node as StringLiteral;
          if (!string.IsNullOrEmpty(strNode.Value)) {
            var firstLetter = strNode.Value.Substring(0, 1);
            var value = strNode.Value.Substring(1);
            var uuid = Guid.NewGuid();
            lines.Add($"jmp >var_{uuid}_end");
            lines.Add($":var_{uuid}");
            foreach (var ch in value) {
              var str = ch.ToString();
              if (str.Trim().Count() == 0) {
                lines.Add(Encoding.ASCII.GetBytes(str).FirstOrDefault().ToString());
              } else {
                lines.Add($"&{str}");
              }
            }
            lines.Add("0");
            lines.Add($":var_{uuid}_end");
            if (firstLetter.Trim().Count() == 0) {
              lines.Add(
                $"wmem >var_{uuid} {Encoding.ASCII.GetBytes(firstLetter).FirstOrDefault().ToString()}"
              );
            } else {
              lines.Add($"wmem >var_{uuid} &{firstLetter}");
            }
            lines.Add($"set reg0 >var_{uuid}");
          }
        }
      }
      return lines;
    }

    private List<string> EnsureDivisionSupport(Context ctx, List<string> lines)
    {
      lines = EnsureSubtractSupport(ctx, lines);
      if (!ctx.HasDivisionSupport)
      {
        ctx.HasDivisionSupport = true;
        lines.AddRange(
            @"
              :divide
              set reg3 0
              set reg2 reg1
              :divide_loop
              set reg1 reg2
              gt reg4 reg0 reg1
              eq reg5 reg0 reg1
              or reg4 reg4 reg5
              jf reg4 >divide_loop_end
              call >subtract
              add reg3 reg3 1
              call >divide_loop
              :divide_loop_end
              set reg0 reg3
              ret
            "
            .Split('\n')
            .Select(ln => ln.Trim())
            .ToList()
        );
      }
      return lines;
    }

    private List<string> EnsureSubtractSupport(Context ctx, List<string> lines)
    {
      if (!ctx.HasSubtractSupport)
      {
        ctx.HasSubtractSupport = true;
        lines.AddRange(
            @"
              :subtract
              add reg0 reg0 32767
              add reg1 reg1 32767
              jt reg1 >subtract
              ret
            "
            .Split('\n')
            .Select(ln => ln.Trim())
            .ToList()
        );
      }
      return lines;
    }

    private List<string> EnsureNotSupport(Context ctx, List<string> lines)
    {
      if (!ctx.HasNotSupport)
      {
        ctx.HasNotSupport = true;
        lines.AddRange(
            @"
              :not
              jf reg0 >not_isfalse
              :not_istrue
              set reg0 0
              ret
              :not_isfalse
              set reg0 1
              ret
            "
            .Split("\n")
            .Select(ln => ln.Trim())
            .ToList()
        );
      }
      return lines;
    }

    private List<string> EnsureAndSupport(Context ctx, List<string> lines)
    {
      if (!ctx.HasAndSupport)
      {
        ctx.HasAndSupport = true;
        lines.AddRange(
            @"
              :and
              jf reg0 >and_isfalse
              jf reg1 >and_isfalse
              :and_istrue
              set reg0 1
              ret
              :and_isfalse
              set reg0 0
              ret
            "
            .Split("\n")
            .Select(ln => ln.Trim())
            .ToList()
        );
      }
      return lines;
    }

     private List<string> EnsureOrSupport(Context ctx, List<string> lines)
    {
      if (!ctx.HasOrSupport)
      {
        ctx.HasOrSupport = true;
        lines.AddRange(
            @"
              :or
              jt reg0 >or_istrue
              jt reg1 >or_istrue
              :or_isfalse
              set reg0 0
              ret
              :or_istrue
              set reg0 1
              ret
            "
            .Split("\n")
            .Select(ln => ln.Trim())
            .ToList()
        );
      }
      return lines;
    }
  }
}