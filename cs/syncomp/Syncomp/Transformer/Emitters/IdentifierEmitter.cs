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

            if (variable.VariableDeclaration.NodeType.Body?.Count > 0)
            {
                lines.Add($"set reg{ctx.RegisterLevel} >{variable.MemoryAddress}");
                foreach(var _ in variable.VariableDeclaration.NodeType.Body)
                {
                    lines.Add("pop reg7");
                    lines.Add($"add reg{ctx.RegisterLevel} reg{ctx.RegisterLevel} 1");
                    lines.Add($"rmem reg{ctx.RegisterLevel + 1} reg{ctx.RegisterLevel}");
                    lines.Add($"push reg{ctx.RegisterLevel + 1}");
                    lines.Add("push reg7");
                }
            }
            else
            {
                lines.Add($"rmem reg{ctx.RegisterLevel} >{variable.MemoryAddress}");
            }

            return lines;
        }
    }
}
