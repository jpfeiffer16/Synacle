namespace syncomp
{
  public class Multiplication : AstNode
  {
    public Multiplication(AstNode left, AstNode right, string file, int line, int column)
        : base("ASTERISK", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
