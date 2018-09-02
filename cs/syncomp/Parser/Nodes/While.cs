using System.Collections.Generic;

namespace syncomp
{
    public class While : AstNode {
        public While(List<AstNode> condition, List<AstNode> expression) : base("WHILE") {
            this.Condition = condition;
            this.Expression = expression;
        }

        public List<AstNode> Condition { get; }
        public List<AstNode> Expression { get; }
    }
}