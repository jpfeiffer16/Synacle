using System.Collections.Generic;

namespace syncomp
{
  public class If : AstNode
  {
    public If(List<AstNode> condition, List<AstNode> expression) : base("IF")
    {
      this.Condition = condition;
      this.Expression = expression;
    }

    public List<AstNode> Condition { get; }
    public List<AstNode> Expression { get; }
  }
}