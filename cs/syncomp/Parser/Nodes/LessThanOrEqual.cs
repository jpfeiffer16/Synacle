namespace compiler
{
    public class LessThanOrEqual : AstNode {
    public LessThanOrEqual(AstNode left, AstNode right) : base ("LESS_THAN") {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}