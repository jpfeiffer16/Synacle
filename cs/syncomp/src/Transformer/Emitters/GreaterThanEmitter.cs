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
      var transformer = new Transformer();
      var gtNode = node as GreaterThan;

      lines.AddRange(transformer.Transform(new List<AstNode> { gtNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(transformer.Transform(new List<AstNode> { gtNode.Right }, ctx));
      ctx.RegisterLevel--;
      lines.Add("gt reg0 reg0 reg1");

      return lines;
    }
  }
}