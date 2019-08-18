namespace syncomp
{
  public class Dot : AstNode
  {
    public Dot(AstNode left, AstNode right) : base("DOT")
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
