using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class PointerDeclarationEmitter : IEmitter
    {
        public Type Match => typeof(PointerDeclaration);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var pdNode = node as PointerDeclaration;
            var lines = new List<string>();
            var name = pdNode.Identifier;
            var backingVarName = $"{pdNode.Identifier}_backing";
            var backingVariableNode = new VariableDeclaration(backingVarName, pdNode.LangType.SubTypes.FirstOrDefault(), pdNode.File, pdNode.Line, pdNode.Column);
            lines.AddRange(new VariableDeclarationEmitter().Transform(backingVariableNode, ctx));

            lines.AddRange(new VariableDeclarationEmitter().Transform(pdNode, ctx));

            var backingGuid = TransformerHelpers.GetUID(backingVariableNode.File, backingVariableNode.Identifier, backingVariableNode.Line, backingVariableNode.Column);
            var variableGuid = TransformerHelpers.GetUID(pdNode.File, pdNode.Identifier, pdNode.Line, pdNode.Column);
            lines.Add($"wmem >var_{variableGuid} >var_{backingGuid}");

            ctx.Variables.Add(new Variable
            {
                Name = pdNode.Identifier,
                MemoryAddress = $"var_{variableGuid}"
            });
            return lines;
        }
    }
}
