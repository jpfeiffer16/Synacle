using System;
using System.Collections.Generic;

namespace syncomp
{
    public class AdditionEmitter : IEmitter
    {
        public Type Match => typeof(Addition);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var addNode = node as Addition;
            lines.AddRange(new Transformer(new List<AstNode> { addNode.Left }, ctx).Transform());
            ctx.RegisterLevel++;
            lines.AddRange(new Transformer(new List<AstNode> { addNode.Right }, ctx).Transform());
            ctx.RegisterLevel--;

            lines.Add($"add reg{ctx.RegisterLevel} reg{ctx.RegisterLevel} reg{ctx.RegisterLevel + 1}");

            return lines;
        }
    }
}
