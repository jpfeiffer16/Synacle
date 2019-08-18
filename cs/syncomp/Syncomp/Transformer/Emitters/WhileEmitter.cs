using System;
using System.Collections.Generic;

namespace syncomp
{
    public class WhileEmitter : IEmitter
    {
        public Type Match => typeof(While);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var whNode = node as While;
            var uuid = TransformerHelpers.GetUID();

            //Begin
            lines.Add($":while_{uuid}_begin");
            //Condition
            lines.AddRange(new Transformer(whNode.Condition, ctx).Transform());
            lines.Add($"jf reg0 >while_{uuid}_end");
            //Expression
            lines.AddRange(new Transformer(whNode.Expression, ctx).Transform());
            //End
            lines.Add($"jmp >while_{uuid}_begin");
            lines.Add($":while_{uuid}_end");

            return lines;
        }
    }
}
