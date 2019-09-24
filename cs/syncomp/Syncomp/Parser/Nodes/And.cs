namespace syncomp
{
  public class And : AstNode
  {
    public And(AstNode left, AstNode right, string file, int line, int column)
        : base("AND", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
