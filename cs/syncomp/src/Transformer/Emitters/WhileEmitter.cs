using System;
using System.Collections.Generic;

namespace syncomp
{
  public class WhileEmitter : IEmitter
  {
    public Type Match => typeof(While);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var tranformer = new Transformer();
      var whNode = node as While;
      var uuid = TransformerHelpers.GetUID();

      //Begin
      lines.Add($":while_{uuid}_begin");
      //Condition
      lines.AddRange(tranformer.Transform(whNode.Condition, ctx));
      lines.Add($"jf reg0 >while_{uuid}_end");
      //Expression
      lines.AddRange(tranformer.Transform(whNode.Expression, ctx));
      //End
      lines.Add($"jmp >while_{uuid}_begin");
      lines.Add($":while_{uuid}_end");

      return lines;
    }
  }
}