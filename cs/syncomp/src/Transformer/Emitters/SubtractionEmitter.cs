using System;
using System.Collections.Generic;

namespace syncomp
{
    public class SubtractionEmitter : IEmitter
    {
        public Type Match => typeof(Subtraction);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var sbNode = node as Subtraction;

            lines.AddRange(new Transformer(new List<AstNode> { sbNode.Left }, ctx).Transform());
            ctx.RegisterLevel++;
            lines.AddRange(new Transformer(new List<AstNode> { sbNode.Right }, ctx).Transform());
            ctx.RegisterLevel--;

            lines.Add($"call >subtract");

            return lines;
        }
    }
}
