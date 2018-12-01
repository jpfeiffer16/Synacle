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
      var modNode = node as Mod;

      lines.AddRange(new Transformer(new List<AstNode> { modNode.Left }, ctx).Transform());
      ctx.RegisterLevel++;
      lines.AddRange(new Transformer(new List<AstNode> { modNode.Right }, ctx).Transform());
      ctx.RegisterLevel--;

      lines.Add($"mod reg0 reg0 reg1");

      return lines;
    }
  }
}