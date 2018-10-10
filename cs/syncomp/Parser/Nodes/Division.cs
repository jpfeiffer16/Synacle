namespace syncomp
{
  public class Division : AstNode
  {
    public Division(AstNode left, AstNode right) : base("DIVISION")
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}