namespace compiler
{
  public class And : AstNode {
    public And(AstNode left, AstNode right) : base("AND") {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}