using System;
using System.Collections.Generic;

namespace syncomp
{
  public class GreaterThanOrEqualEmitter : IEmitter
  {
    public Type Match => typeof(GreaterThanOrEqual);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var gtNode = node as GreaterThanOrEqual;

      lines.AddRange(tranformer.Transform(new List<AstNode> { gtNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(tranformer.Transform(new List<AstNode> { gtNode.Right }, ctx));
      ctx.RegisterLevel--;
      lines.Add("gt reg2 reg0 reg1");
      lines.Add("eq reg3 reg0 reg1");
      lines.Add("or reg0 reg2 reg3");

      return lines;
    }
  }
}