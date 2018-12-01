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
      var ifNode = node as If;

      var uuid = TransformerHelpers.GetUID();

      lines.AddRange(new Transformer(ifNode.Condition, ctx).Transform());
      lines.Add($"jf reg0 >end_{uuid}");
      lines.AddRange(new Transformer(ifNode.Expression, ctx).Transform());
      lines.Add($":end_{uuid}");

      return lines;
    }
  }
}