using System;
using System.Collections.Generic;

namespace syncomp
{
    public class MultiplicationEmitter : IEmitter
    {
        public Type Match => typeof(Multiplication);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var sbNode = node as Multiplication;

            lines.AddRange(new Transformer(new List<AstNode> { sbNode.Left }, ctx).Transform());
            ctx.RegisterLevel++;
            lines.AddRange(new Transformer(new List<AstNode> { sbNode.Right }, ctx).Transform());
            ctx.RegisterLevel--;

            lines.Add($"mult reg0 reg0 reg1");

            return lines;
        }
    }
}
