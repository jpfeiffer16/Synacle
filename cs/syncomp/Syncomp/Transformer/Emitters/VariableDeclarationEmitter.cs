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
            var guid = TransformerHelpers.GetUID();
            lines.Add($"jmp >var_{guid.ToString()}_end");
            lines.Add($":var_{guid.ToString()}");
            lines.Add($":var_{guid.ToString()}_end");

            ctx.Variables.Add(new Variable()
            {
                Name = vdNode.Identifier,
                MemoryAddress = $"var_{guid.ToString()}"
            });

            return lines;
        }
    }
}
