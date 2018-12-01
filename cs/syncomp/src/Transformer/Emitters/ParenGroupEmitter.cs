using System;
using System.Collections.Generic;

namespace syncomp
{
  public class ParenGroupEmitter : IEmitter
  {
    public Type Match => typeof(ParenGroup);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var pgNode = node as ParenGroup;
      lines.AddRange(new Transformer().Transform(pgNode.Nodes, ctx));

      return lines;
    }
  }
}