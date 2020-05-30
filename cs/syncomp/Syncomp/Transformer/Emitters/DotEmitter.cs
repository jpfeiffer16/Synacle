using System;
using System.Collections.Generic;

namespace syncomp
{
    public class DotEmitter : IEmitter
    {
        public Type Match => typeof(Dot);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var dotNode = node as Dot;

            var variable = ctx.Variables.Get((dotNode.Left as Identifier).Name);
            var fieldName = TransformerHelpers.GetUID(
                    variable.VariableDeclaration.File,
                    variable.VariableDeclaration.Identifier,
                    variable.VariableDeclaration.Line,
                    variable.VariableDeclaration.Column);
            var memoryAddress = $"fld_{fieldName}_{(dotNode.Right as Identifier).Name}";

            lines.Add($"rmem reg{ctx.RegisterLevel} >{memoryAddress}");
            
            return lines;
        }
    }
}
