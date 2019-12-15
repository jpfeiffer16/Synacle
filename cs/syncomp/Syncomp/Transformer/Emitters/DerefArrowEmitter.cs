using System;
using System.Collections.Generic;

namespace syncomp
{
    public class DerefArrowEmitter : IEmitter
    {
        public Type Match => typeof(DerefArrow);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var derefArrowNode = node as DerefArrow;
            var variable = ctx.Variables.Get((derefArrowNode.Left as Identifier).Name);
            var type = variable.VariableDeclaration.NodeType.SubType;
            var offset = TypeHelper.GetFieldOffset(type, (derefArrowNode.Right as Identifier).Name);
            var lines = new List<string>();
            lines.Add($"rmem reg{ctx.RegisterLevel} >{variable.MemoryAddress}");
            lines.Add($"add reg{ctx.RegisterLevel} reg{ctx.RegisterLevel} {offset}");
            lines.Add($"rmem reg{ctx.RegisterLevel} reg{ctx.RegisterLevel}");
            return lines;
        }
    }
}
