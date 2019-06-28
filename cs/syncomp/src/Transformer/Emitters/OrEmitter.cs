using System;
using System.Collections.Generic;

namespace syncomp
{
    public class OrEmitter : IEmitter
    {
        public Type Match => typeof(Or);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var andNode = node as Or;
            lines.AddRange(new Transformer(new List<AstNode> { andNode.Left }, ctx).Transform());
            ctx.RegisterLevel++;
            lines.AddRange(new Transformer(new List<AstNode> { andNode.Right }, ctx).Transform());
            ctx.RegisterLevel--;
            lines.Add("call >or");

            return lines;
        }
    }
}
