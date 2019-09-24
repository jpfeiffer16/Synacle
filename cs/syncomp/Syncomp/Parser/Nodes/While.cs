using System.Collections.Generic;

namespace syncomp
{
  public class While : AstNode
  {
    public While(List<AstNode> condition, List<AstNode> expression, string file, int line, int column)
      : base("WHILE", file, line, column)
    {
      this.Condition = condition;
      this.Expression = expression;
    }

    public List<AstNode> Condition { get; }
    public List<AstNode> Expression { get; }
  }
}
