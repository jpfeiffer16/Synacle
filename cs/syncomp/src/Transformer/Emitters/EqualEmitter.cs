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
      var eqNode = node as Equal;

      lines.AddRange(new Transformer(new List<AstNode> { eqNode.Left }, ctx).Transform());
      ctx.RegisterLevel++;
      lines.AddRange(new Transformer(new List<AstNode> { eqNode.Right }, ctx).Transform());
      ctx.RegisterLevel--;
      lines.Add("eq reg0 reg0 reg1");

      return lines;
    }
  }
}