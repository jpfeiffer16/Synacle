namespace syncomp {
  public class GreaterThanOrEqual : AstNode {
    public GreaterThanOrEqual(AstNode left, AstNode right) : base("GEATER_THAN") {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}