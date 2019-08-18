using System.Collections.Generic;

namespace syncomp
{
    public class LangType : AstNode
    {
        public LangType(string name, List<AstNode> body) : base("LANGTYPE")
        {
            this.Name = name;
            this.Body = body;
        }

        public string Name { get; }
        public List<AstNode> Body { get; }
    }
}
