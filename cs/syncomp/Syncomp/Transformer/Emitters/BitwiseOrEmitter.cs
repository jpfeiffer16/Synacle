using System;
using System.Collections.Generic;

namespace syncomp
{
    public class BitwiseOrEmitter : IEmitter
    {
        public Type Match => typeof(BitwiseOr);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var andNode = node as BitwiseOr;
            lines.AddRange(new Transformer(new List<AstNode> { andNode.Left }, ctx).Transform());
            ctx.RegisterLevel++;
            lines.AddRange(new Transformer(new List<AstNode> { andNode.Right }, ctx).Transform());
            ctx.RegisterLevel--;
            lines.Add($"or reg{ctx.RegisterLevel} reg{ctx.RegisterLevel} reg{ctx.RegisterLevel + 1}");

            return lines;
        }
    }
}
