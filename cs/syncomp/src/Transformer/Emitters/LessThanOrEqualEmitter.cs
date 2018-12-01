using System;
using System.Collections.Generic;

namespace syncomp
{
  public class LessThanOrEqualEmitter : IEmitter
  {
    public Type Match => typeof(LessThanOrEqual);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var ltNode = node as LessThanOrEqual;

      lines.AddRange(new Transformer(new List<AstNode> { ltNode.Left }, ctx).Transform());
      ctx.RegisterLevel++;
      lines.AddRange(new Transformer(new List<AstNode> { ltNode.Right }, ctx).Transform());
      ctx.RegisterLevel--;
      lines.Add("gt reg0 reg0 reg1");

      lines.Add("call >not");

      return lines;
    }
  }
}