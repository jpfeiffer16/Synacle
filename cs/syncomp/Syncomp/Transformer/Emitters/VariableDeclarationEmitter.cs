using System;
using System.Collections.Generic;

namespace syncomp
{
    public class VariableDeclarationEmitter : IEmitter
    {
        public Type Match => typeof(VariableDeclaration);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var vdNode = node as VariableDeclaration;
            var guid = TransformerHelpers.GetUID(vdNode.File, vdNode.Line, vdNode.Identifier);
            lines.Add($"jmp >var_{guid}_end");
            lines.Add($":var_{guid}");
            if (vdNode?.NodeType?.Body?.Count > 0)
            {
                foreach (VariableDeclaration bodyNode in vdNode.NodeType.Body)
                {
                    // lines.AddRange(Transform(bodyNode, ctx));
                    lines.Add($":fld_{guid}_{bodyNode.Identifier}");
                }
            }
            lines.Add($":var_{guid}_end");

            ctx.Variables.Add(new Variable()
            {
                Name = vdNode.Identifier,
                MemoryAddress = $"var_{guid}",
                VariableDeclaration = vdNode
            });

            return lines;
        }
    }
}
