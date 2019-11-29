using System;
using System.Collections.Generic;

namespace syncomp
{
    public class AsEmitter : IEmitter
    {
        public Type Match => typeof(As);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var asNode = node as As;
            return new Transformer(new List<AstNode> { asNode.From }, ctx).Transform();
        }
    }
}
