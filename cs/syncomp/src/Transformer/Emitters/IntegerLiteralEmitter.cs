using System;
using System.Collections.Generic;

namespace syncomp
{
  public class IntegerLiteralEmitter : IEmitter
  {
    public Type Match => typeof(IntegerLiteral);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var inNode = node as IntegerLiteral;

      lines.Add($"set reg{ctx.RegisterLevel} {inNode.Value}");

      return lines;
    }
  }
}