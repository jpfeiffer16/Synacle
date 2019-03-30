using System;
using System.Collections.Generic;

namespace syncomp
{
  public class IdentifierEmitter : IEmitter
  {
    public Type Match => typeof(Identifier);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var idNode = node as Identifier;

      var variable = ctx.Variables.Get(idNode.Name);

      lines.Add($"rmem reg{ctx.RegisterLevel} >{variable.MemoryAddress}");
      
      return lines;
    }
  }
}
