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
            // Variable variable = null;
            string memoryAddress = null;

            if (vaNode.Identifier is Identifier)
            {
                var variable = ctx.Variables.Get((vaNode.Identifier as Identifier).Name);
                memoryAddress = variable.MemoryAddress;
            }
            else if (vaNode.Identifier is VariableDeclaration)
            {
                lines.AddRange(new Transformer(new List<AstNode> { vaNode.Identifier }, ctx).Transform());
                var variable = ctx.Variables.Get((vaNode.Identifier as VariableDeclaration).Identifier);
                memoryAddress = variable.MemoryAddress;
            }
            else if (vaNode.Identifier is Dot dot)
            {
                var variable = ctx.Variables.Get((dot.Left as Identifier).Name);
                // memoryAddress = $"fld_{(dot.Left as Identifier).Name}_{(dot.Right as Identifier).Name}";
                var fieldName = TransformerHelpers.GetUID(
                        variable.VariableDeclaration.File,
                        variable.VariableDeclaration.Line,
                        variable.VariableDeclaration.Identifier);
                memoryAddress = $"fld_{fieldName}_{(dot.Right as Identifier).Name}";
            }

            lines.AddRange(new Transformer(new List<AstNode> { vaNode.Parameter }, ctx).Transform());
            lines.Add($"wmem >{memoryAddress ?? throw new Exception("Unknown memory address")} reg0");

            return lines;
        }
    }
}
