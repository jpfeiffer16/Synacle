using System.Collections.Generic;

namespace compiler
{
    public class FunctionCall : AstNode {
        public FunctionCall(List<AstNode> parameters, string name) : base("FUNCTION_CALL") {
            this.Parameters = parameters;
            this.Name = name;
        }

        public List<AstNode> Parameters { get; }
        public string Name { get; }
    }
}