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

            var preserveRegisters = ctx.RegisterLevel > 0 ? true : false;
            if (preserveRegisters)
            {
                lines.Add($"push reg0");
                lines.Add($"push reg1");
                lines.Add($"set reg0 reg{ctx.RegisterLevel}");
                lines.Add($"set reg1 reg{ctx.RegisterLevel + 1}");
            }
            lines.Add($"call >subtract");
            if (preserveRegisters)
            {
                lines.Add($"pop reg1");
                lines.Add($"set reg{ctx.RegisterLevel} reg0");
                lines.Add($"pop reg0");
            }

            return lines;
        }
    }
}
