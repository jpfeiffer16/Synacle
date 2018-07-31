using System.Collections.Generic;

namespace compiler
{
    public class FunctionCall : AstNode {
        public FunctionCall(List<AstNode> parameters, AstNode name) : base("FUNCTION_CALL") {
            this.Parameters = parameters;
            this.Name = name;
        }

        public List<AstNode> Parameters { get; }
        public AstNode Name { get; }
    }
}