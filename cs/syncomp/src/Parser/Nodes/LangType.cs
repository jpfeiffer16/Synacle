using System.Collections.Generic;

namespace syncomp
{
    public class LangType : AstNode
    {
        public LangType(List<AstNode> body) : base("TYPE")
        {
            this.Body = body;
        }

        public List<AstNode> Body { get; }
    }
}
