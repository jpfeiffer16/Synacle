using System;
using System.Collections.Generic;

namespace syncomp
{
  public class IfEmitter : IEmitter
  {
    public Type Match => typeof(If);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var ifNode = node as If;

      var uuid = TransformerHelpers.GetUID();

      lines.AddRange(tranformer.Transform(ifNode.Condition, ctx));
      lines.Add($"jf reg0 >end_{uuid}");
      lines.AddRange(tranformer.Transform(ifNode.Expression, ctx));
      lines.Add($":end_{uuid}");

      return lines;
    }
  }
}