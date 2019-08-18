namespace syncomp
{
  public class Subtraction : AstNode
  {
    public Subtraction(AstNode left, AstNode right) : base("SUBTRACTION")
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}