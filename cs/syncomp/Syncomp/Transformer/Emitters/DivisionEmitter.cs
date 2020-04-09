using System;
using System.Collections.Generic;

namespace syncomp
{
    public class DivisionEmitter : IEmitter
    {
        public Type Match => typeof(Division);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var sbNode = node as Division;

            lines.AddRange(new Transformer(new List<AstNode> { sbNode.Left }, ctx).Transform());
            ctx.RegisterLevel++;
            lines.AddRange(new Transformer(new List<AstNode> { sbNode.Right }, ctx).Transform());
            ctx.RegisterLevel--;

            // TODO: Need to do the same thing that SubtractionEmitter emitter does
            // here with the preserveRegisters option
            lines.Add($"call >divide");

            return lines;
        }
    }
}
