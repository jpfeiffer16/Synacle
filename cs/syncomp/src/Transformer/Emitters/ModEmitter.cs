using System;
using System.Collections.Generic;

namespace syncomp
{
  public class ModEmitter : IEmitter
  {
    public Type Match => typeof(Mod);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var transformer = new Transformer();
      var modNode = node as Mod;

      lines.AddRange(transformer.Transform(new List<AstNode> { modNode.Left }, ctx));
      ctx.RegisterLevel++;
      lines.AddRange(transformer.Transform(new List<AstNode> { modNode.Right }, ctx));
      ctx.RegisterLevel--;

      lines.Add($"mod reg0 reg0 reg1");

      return lines;
    }
  }
}