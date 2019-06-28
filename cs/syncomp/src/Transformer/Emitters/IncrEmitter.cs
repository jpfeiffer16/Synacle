using System;
using System.Collections.Generic;

namespace syncomp
{
    public class IncrEmitter : IEmitter
    {
        public Type Match => typeof(Incr);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var incrNode = node as Incr;
            lines.AddRange(new Transformer(new List<AstNode> { incrNode.Parameter }, ctx).Transform());
            lines.Add($"add reg0 reg0 1");
            lines.Add($"wmem >{ctx.Variables.Get((incrNode.Parameter as Identifier).Name).MemoryAddress} reg0");

            return lines;
        }
    }
}
