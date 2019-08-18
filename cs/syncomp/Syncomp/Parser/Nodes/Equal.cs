namespace syncomp
{
  public class Equal : AstNode
  {
    public Equal(AstNode left, AstNode right) : base("EQUAL")
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}