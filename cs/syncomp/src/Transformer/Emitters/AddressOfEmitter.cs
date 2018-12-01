using System;
using System.Collections.Generic;

namespace syncomp
{
  public class AddressOfEmitter : IEmitter
  {
    public Type Match => typeof(AddressOf);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var adofNode = node as AddressOf;
      var variable = ctx.Variables.Get((adofNode.Parameter as Identifier).Name);
      lines.Add($"set reg0 >{variable.MemoryAddress}");

      return lines;
    }
  }
}