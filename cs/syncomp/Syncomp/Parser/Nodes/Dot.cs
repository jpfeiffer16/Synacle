namespace syncomp
{
  public class Dot : AstNode
  {
    public Dot(AstNode left, AstNode right, string file, int line, int column)
        : base("DOT", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
