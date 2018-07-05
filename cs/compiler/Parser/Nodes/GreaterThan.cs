namespace compiler {
  public class GreaterThan : AstNode {
    public GreaterThan(AstNode left, AstNode right) : base("GEATER_THAN") {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}