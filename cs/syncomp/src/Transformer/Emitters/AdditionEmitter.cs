using System;
using System.Collections.Generic;

namespace syncomp
{
  public class AdditionEmitter : IEmitter
  {
    public Type Match => typeof(Addition);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var addNode = node as Addition;
      lines.AddRange(tranformer.Transform(new List<AstNode> { addNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(tranformer.Transform(new List<AstNode> { addNode.Right }, ctx));
      ctx.RegisterLevel--;

      lines.Add($"add reg0 reg0 reg1");

      return lines;
    }
  }
}