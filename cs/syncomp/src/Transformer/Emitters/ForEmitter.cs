using System;
using System.Collections.Generic;

namespace syncomp
{
    public class ForEmitter : IEmitter
    {
        public Type Match => typeof(For);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var forNode = node as For;
            var uuid = TransformerHelpers.GetUID();

            lines.AddRange(new Transformer(forNode.Init, ctx).Transform());
            lines.Add($":for_{uuid}_begin");
            lines.AddRange(new Transformer(forNode.Condition, ctx).Transform());
            lines.Add($"jf reg0 >for_{uuid}_end");

            lines.AddRange(new Transformer(forNode.Expression, ctx).Transform());
            lines.AddRange(new Transformer(forNode.Incrementor, ctx).Transform());

            lines.Add($"jmp >for_{uuid}_begin");
            lines.Add($":for_{uuid}_end");

            return lines;
        }
    }
}
