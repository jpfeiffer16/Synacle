using System;
using System.Collections.Generic;
using System.Linq;

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

          lines.Add($":{fcNode.Name}");
          lines.AddRange(TransformAst(fcNode.Expression, ctx));
          lines.Add("ret");
        }

        if (nodeType == typeof(VariableAssignment))
        {
          var vaNode = node as VariableAssignment;

          var variable = ctx.Variables.Find(vr => vr.Name == (vaNode.Identifier as Identifier).Name);

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

        if (nodeType == typeof(GreaterThan))
        {
          var gtNode = node as GreaterThan;

          lines.AddRange(TransformAst(new List<AstNode> { gtNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { gtNode.Right }, ctx));
          ctx.RegisterLevel--;
          lines.Add("gt reg0 reg0 reg1");
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

        if (nodeType == typeof(Addition))
        {
          var addNode = node as Addition;
          lines.AddRange(TransformAst(new List<AstNode> { addNode.Left }, ctx));
          ctx.RegisterLevel++;
          lines.AddRange(TransformAst(new List<AstNode> { addNode.Right }, ctx));
          ctx.RegisterLevel--;

          lines.Add($"add reg0 reg0 reg1");
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
          } else if (fcNode.Name == "exit") {
            lines.Add("halt");
          } else {
            lines.Add($"call >{fcNode.Name}");
          }
        }

        if (nodeType == typeof(Identifier))
        {
          var idNode = node as Identifier;

          var variable = ctx.Variables.Find(vr => vr.Name == idNode.Name);

          lines.Add($"rmem reg{ctx.RegisterLevel} >{variable.MemoryAddress}");
        }

        if (nodeType == typeof(IntegerLiteral))
        {
          var inNode = node as IntegerLiteral;

          lines.Add($"set reg{ctx.RegisterLevel} {inNode.Value}");
        }

        //TODO: Add params here when needed
        if (nodeType == typeof(Return)) {
          lines.Add("ret");
        }
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
  }
}