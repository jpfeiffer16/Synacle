using System;
using System.Collections.Generic;

namespace syncomp
{
  public class MultiplicationEmitter : IEmitter
  {
    public Type Match => typeof(Multiplication);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var sbNode = node as Multiplication;

      lines.AddRange(tranformer.Transform(new List<AstNode> { sbNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(tranformer.Transform(new List<AstNode> { sbNode.Right }, ctx));
      ctx.RegisterLevel--;

      lines.Add($"mult reg0 reg0 reg1");

      return lines;
    }
  }
}