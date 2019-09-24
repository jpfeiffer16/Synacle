namespace syncomp
{
  public class Subtraction : AstNode
  {
    public Subtraction(AstNode left, AstNode right, string file, int line, int column)
        : base("SUBTRACTION", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
