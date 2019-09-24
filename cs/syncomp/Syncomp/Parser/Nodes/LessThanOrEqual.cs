namespace syncomp
{
  public class LessThanOrEqual : AstNode
  {
    public LessThanOrEqual(AstNode left, AstNode right, string file, int line, int column)
        : base("LESS_THAN", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
