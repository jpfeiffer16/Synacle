namespace syncomp
{
  public class Equal : AstNode
  {
    public Equal(AstNode left, AstNode right, string file, int line, int column)
        : base("EQUAL", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
