namespace syncomp
{
  public class Or : AstNode
  {
    public Or(AstNode left, AstNode right) : base("OR")
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}