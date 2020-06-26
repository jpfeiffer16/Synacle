using System;
using System.Collections.Generic;

namespace syncomp
{
    public class BitwiseNotEmitter : IEmitter
    {
        public Type Match => typeof(BitwiseNot);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var bitwiseNotNode = node as BitwiseNot;

            new Transformer(new List<AstNode> { bitwiseNotNode.Parameter }, ctx).Transform();
            lines.Add($"not reg{ctx.RegisterLevel} reg{ctx.RegisterLevel}");

            return lines;
        }
    }
}
