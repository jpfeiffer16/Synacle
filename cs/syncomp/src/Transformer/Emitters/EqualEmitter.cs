using System;
using System.Collections.Generic;

namespace syncomp
{
  public class EqualEmitter : IEmitter
  {
    public Type Match => typeof(Equal);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var eqNode = node as Equal;

      lines.AddRange(tranformer.Transform(new List<AstNode> { eqNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(tranformer.Transform(new List<AstNode> { eqNode.Right }, ctx));
      ctx.RegisterLevel--;
      lines.Add("eq reg0 reg0 reg1");

      return lines;
    }
  }
}