using System;
using System.Collections.Generic;

namespace syncomp
{
  public class NotEmitter : IEmitter
  {
    public Type Match => typeof(Not);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var transformer = new Transformer();
      var lines = new List<string>();
      var notNode = node as Not;
      lines.AddRange(transformer.Transform(new List<AstNode> { notNode.Parameter }, ctx));
      lines.Add("call >not");

      return lines;
    }
  }
}