using System;
using System.Collections.Generic;

namespace syncomp
{
  public class SubtractionEmitter : IEmitter
  {
    public Type Match => typeof(Subtraction);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var sbNode = node as Subtraction;

      lines.AddRange(tranformer.Transform(new List<AstNode> { sbNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(tranformer.Transform(new List<AstNode> { sbNode.Right }, ctx));
      ctx.RegisterLevel--;

      lines.Add($"call >subtract");

      return lines;
    }
  }
}