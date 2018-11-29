using System;
using System.Collections.Generic;

namespace syncomp
{
  public class AndEmitter : IEmitter
  {
    public Type Match => typeof(And);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var transformer = new Transformer();
      var lines = new List<string>();
      var andNode = node as And;
      lines.AddRange(transformer.Transform(new List<AstNode> { andNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(transformer.Transform(new List<AstNode> { andNode.Right }, ctx));
      ctx.RegisterLevel--;
      lines.Add("call >and");

      return lines;
    }
  }
}