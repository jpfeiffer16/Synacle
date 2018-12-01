using System;
using System.Collections.Generic;

namespace syncomp
{
  public class DerefEmitter : IEmitter
  {
    public Type Match => typeof(Deref);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var adofNode = node as Deref;
      lines.AddRange(new Transformer(new List<AstNode> { adofNode.Parameter }, ctx).Transform());
      lines.Add($"rmem reg{ctx.RegisterLevel} reg{ctx.RegisterLevel}");

      return lines;
    }
  }
}