using System;
using System.Collections.Generic;

namespace syncomp
{
  public class LessThanEmitter : IEmitter
  {
    public Type Match => typeof(LessThan);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var transformer = new Transformer();
      var ltNode = node as LessThan;

      lines.AddRange(transformer.Transform(new List<AstNode> { ltNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(transformer.Transform(new List<AstNode> { ltNode.Right }, ctx));
      ctx.RegisterLevel--;
      lines.Add("eq reg2 reg0 reg1");
      lines.Add("gt reg3 reg0 reg1");
      lines.Add("or reg0 reg2 reg3");
      lines.Add("call >not");

      return lines;
    }
  }
}