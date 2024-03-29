using System.Collections.Generic;

namespace syncomp
{
  public class For : AstNode
  {
    public For(
      List<AstNode> init,
      List<AstNode> condition,
      List<AstNode> incrementor,
      List<AstNode> expression,
      string file,
      int line,
      int column
    ) : base("FOR", file, line, column)
    {
      this.Init = init;
      this.Condition = condition;
      this.Incrementor = incrementor;
      this.Expression = expression;
    }

    public List<AstNode> Init { get; }
    public List<AstNode> Condition { get; }
    public List<AstNode> Incrementor { get; }
    public List<AstNode> Expression { get; }
  }
}
