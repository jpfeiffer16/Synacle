using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class LangTypeEmitter : IEmitter
    {
        public Type Match => typeof(LangType);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            // TODO: We are doing a cast anyways here. This should
            // be a generic class and just use <T> throughout
            var tNode = node as LangType;

            var guid = TransformerHelpers.GetUID(tNode.File, tNode.Line, tNode.Name);
            lines.Add($"jmp >type_{guid.ToString()}_end");
            lines.Add($":type_{guid.ToString()}");
            lines.AddRange(new Transformer(tNode.Body.Cast<AstNode>().ToList(), ctx).Transform());
            lines.Add($":type_{guid.ToString()}_end");
            return lines;
        }
    }
}
