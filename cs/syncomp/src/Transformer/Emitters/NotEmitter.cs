using System;
using System.Collections.Generic;

namespace syncomp
{
  public class NotEmitter : IEmitter
  {
    public Type Match => typeof(Not);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var notNode = node as Not;
      lines.AddRange(new Transformer(new List<AstNode> { notNode.Parameter }, ctx).Transform());
      lines.Add("call >not");

      return lines;
    }
  }
}