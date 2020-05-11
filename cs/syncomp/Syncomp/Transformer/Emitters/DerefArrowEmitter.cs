using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class DerefArrowEmitter : IEmitter
    {
        public Type Match => typeof(DerefArrow);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var derefArrowNode = node as DerefArrow;
            var type = derefArrowNode.Left.NodeType.SubTypes.FirstOrDefault();
            var offset = TypeHelper.GetFieldOffset(type, (derefArrowNode.Right as Identifier).Name);
            var lines = new List<string>();
            lines.AddRange(new Transformer(new List<AstNode> { derefArrowNode.Left }, ctx).Transform());
            lines.Add($"add reg{ctx.RegisterLevel} reg{ctx.RegisterLevel} {offset}");
            lines.Add($"rmem reg{ctx.RegisterLevel} reg{ctx.RegisterLevel}");
            return lines;
        }
    }
}
