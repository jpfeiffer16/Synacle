using System.Collections.Generic;

namespace syncomp
{
    public class FunctionCall : AstNode
    {
        public FunctionCall(List<AstNode> parameters, AstNode name, string file, int line, int column)
          : base("FUNCTION_CALL", file, line, column)
        {
            this.Parameters = parameters;
            this.Name = name;
        }

        public List<AstNode> Parameters { get; }
        public AstNode Name { get; }
    }
}
