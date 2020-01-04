using System.Collections.Generic;

namespace syncomp
{
    public class FunctionDeclaration : AstNode
    {
        public FunctionDeclaration(
            List<AstNode> parameters,
            List<AstNode> expression,
            string name,
            string file,
            int line,
            int column)
            : base("FUNCTION_DECLARATION", file, line, column)
        {
            this.Parameters = parameters;
            this.Expression = expression;
            this.Name = name;
        }

        public List<AstNode> Parameters { get; }
        public List<AstNode> Expression { get; }
        public string Name { get; }
        public LangType ReturnType { get; set; }
    }
}
