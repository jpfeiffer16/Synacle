using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace syncomp
{
  public class Transformer
  {
    private static List<IEmitter> Emitters = AppDomain
        .CurrentDomain.GetAssemblies()
        .Where(asm => asm.FullName.Contains("syncomp"))
        .SelectMany(asm => asm.GetTypes())
        .Where(tp => tp != typeof(IEmitter))
        .Where(tp => typeof(IEmitter).IsAssignableFrom(tp))
        .Select(tp => (IEmitter)Activator.CreateInstance(tp))
        .ToList();

    private readonly List<AstNode> nodes;
    private readonly Context ctx;

    public Transformer(List<AstNode> nodes, Context ctx = null)
    {
      this.nodes = nodes;
      this.ctx = ctx ?? new Context();
    }

    public List<string> TransformFullAst()
    {
      var lines = this.Transform();

      //Manually add a halt so as not to trample over data
      lines.Add("halt");
      lines = EnsureSubtractSupport(ctx, lines);
      lines = EnsureNotSupport(ctx, lines);
      lines = EnsureDivisionSupport(ctx, lines);
      lines = EnsureAndSupport(ctx, lines);
      lines = EnsureOrSupport(ctx, lines);
      return lines;
    }

    public List<string> Transform()
    {
      var lines = new List<string>();
      
      foreach (var node in nodes)
      {
        var matches = Emitters.Where(em =>
          node.GetType().Equals(em.Match)
        ).ToList();
        foreach (var match in matches)
        {
          lines.AddRange(match.Transform(node, ctx));
        }
      }

      return lines;
    }

    private string GetUID() {
      return Guid.NewGuid().ToString().Substring(24);
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
