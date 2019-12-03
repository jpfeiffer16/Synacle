using System.Collections.Generic;

namespace syncomp
{
    public class LangType : AstNode
    {
        //TODO: Fix!
        public LangType(string name, List<VariableDeclaration> body, string file, int line, int column)
            : base("LANGTYPE", file, line, column)
        {
            this.Name = name;
            this.Body = body;
        }

        public string GetName(VariableDeclaration decl)
        {
            if (!(decl.SubType is null))
            {
                return $"{this.Name}<{decl.SubType.Name}>";
            }
            else
            {
                return this.Name;
            }
        }

        public string Name { get; }
        public List<VariableDeclaration> Body { get; }
        public LangType SubType { get; set; }
    }
}
