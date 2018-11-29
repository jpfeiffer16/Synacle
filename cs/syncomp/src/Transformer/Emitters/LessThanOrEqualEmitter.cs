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
      var tranformer = new Transformer();
      var ltNode = node as LessThanOrEqual;

      lines.AddRange(tranformer.Transform(new List<AstNode> { ltNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(tranformer.Transform(new List<AstNode> { ltNode.Right }, ctx));
      ctx.RegisterLevel--;
      lines.Add("gt reg0 reg0 reg1");

      lines.Add("call >not");

      return lines;
    }
  }
}