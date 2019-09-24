using System.Collections.Generic;

namespace syncomp
{
    public class LangType : AstNode
    {
        //TODO: Fix!
        public LangType(string name, List<AstNode> body)
            : base("LANGTYPE", null, 0, 0)
        {
            this.Name = name;
            this.Body = body;
        }

        public string Name { get; }
        public List<AstNode> Body { get; }
    }
}
