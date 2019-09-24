namespace syncomp
{
  public class Addition : AstNode
  {
    public Addition(AstNode left, AstNode right, string file, int line, int column)
        : base("ADDITION", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
