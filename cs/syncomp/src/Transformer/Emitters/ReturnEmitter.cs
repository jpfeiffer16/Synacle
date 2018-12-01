using System;
using System.Collections.Generic;

namespace syncomp
{
  public class ReturnEmitter : IEmitter
  {
    public Type Match => typeof(Return);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      //TODO: Add params here when needed

      var lines = new List<string>();
      var returnNode = node as Return;
      if (returnNode.Parameter != null) {
        lines.AddRange(
          new Transformer(new List<AstNode> { returnNode.Parameter }, ctx).Transform()
        );
      }
      lines.Add("ret");

      return lines;
    }
  }
}