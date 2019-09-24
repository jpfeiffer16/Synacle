namespace syncomp
{
  public class GreaterThan : AstNode
  {
    public GreaterThan(AstNode left, AstNode right, string file, int line, int column)
        : base("GEATER_THAN", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
