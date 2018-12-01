using System;
using System.Collections.Generic;

namespace syncomp
{
  public class VariableAssignmentEmitter : IEmitter
  {
    public Type Match => typeof(VariableAssignment);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var vaNode = node as VariableAssignment;
      Variable variable = null;

      if (vaNode.Identifier.GetType() == typeof(Identifier)) {
        variable = ctx.Variables.Get((vaNode.Identifier as Identifier).Name);
      } else if (vaNode.Identifier.GetType() == typeof(VariableDeclaration))  {
        lines.AddRange(new Transformer(new List<AstNode> { vaNode.Identifier }, ctx).Transform());
        variable = ctx.Variables.Get((vaNode.Identifier as VariableDeclaration).Identifier);
      }

      lines.AddRange(new Transformer(new List<AstNode> { vaNode.Parameter }, ctx).Transform());
      lines.Add($"wmem >{variable.MemoryAddress} reg0");

      return lines;
    }
  }
}