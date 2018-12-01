using System;
using System.Collections.Generic;

namespace syncomp
{
  public class GreaterThanEmitter : IEmitter
  {
    public Type Match => typeof(GreaterThan);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var gtNode = node as GreaterThan;

      lines.AddRange(new Transformer(new List<AstNode> { gtNode.Left }, ctx).Transform());
      ctx.RegisterLevel++;
      lines.AddRange(new Transformer(new List<AstNode> { gtNode.Right }, ctx).Transform());
      ctx.RegisterLevel--;
      lines.Add("gt reg0 reg0 reg1");

      return lines;
    }
  }
}