using System;
using System.Collections.Generic;

namespace syncomp
{
  public class ForEmitter : IEmitter
  {
    public Type Match => typeof(For);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var transformer = new Transformer();
      var forNode = node as For;
      var uuid = TransformerHelpers.GetUID();

      lines.AddRange(transformer.Transform(forNode.Init, ctx));
      lines.Add($":for_{uuid}_begin");
      lines.AddRange(transformer.Transform(forNode.Condition, ctx));
      lines.Add($"jf reg0 >for_{uuid}_end");

      lines.AddRange(transformer.Transform(forNode.Expression, ctx));
      lines.AddRange(transformer.Transform(forNode.Incrementor, ctx));

      lines.Add($"jmp >for_{uuid}_begin");
      lines.Add($":for_{uuid}_end");

      return lines;
    }
  }
}