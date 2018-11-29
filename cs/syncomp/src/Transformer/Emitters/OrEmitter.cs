using System;
using System.Collections.Generic;

namespace syncomp
{
  public class OrEmitter : IEmitter
  {
    public Type Match => typeof(Or);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var andNode = node as Or;
      lines.AddRange(tranformer.Transform(new List<AstNode> { andNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(tranformer.Transform(new List<AstNode> { andNode.Right }, ctx));
      ctx.RegisterLevel--;
      lines.Add("call >or");

      return lines;
    }
  }
}