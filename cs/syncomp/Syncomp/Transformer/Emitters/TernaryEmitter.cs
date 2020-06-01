using System;
using System.Collections.Generic;

namespace syncomp
{
    public class TernaryEmitter : IEmitter
    {
        public Type Match => typeof(Ternary);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var ternaryNode = node as Ternary;
            var lines = new List<string>();
            lines.AddRange(new Transformer(new List<AstNode> { ternaryNode.Condition }, ctx).Transform());
            var negativeLabel = TransformerHelpers.GetUID(node.File, "ternary_negative", node.Line, node.Column);
            var endLabel = TransformerHelpers.GetUID(node.File, "ternary_end", node.Line, node.Column);
            lines.Add($"jf reg0 >{negativeLabel}");
            lines.AddRange(new Transformer(new List<AstNode> { ternaryNode.Left }, ctx).Transform());
            lines.Add($"jmp >{endLabel}");
            lines.Add($":{negativeLabel}");
            lines.AddRange(new Transformer(new List<AstNode> { ternaryNode.Right }, ctx).Transform());
            lines.Add($":{endLabel}");

            return lines;
        }
    }
}
