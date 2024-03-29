namespace syncomp
{
  public class Division : AstNode
  {
    public Division(AstNode left, AstNode right, string file, int line, int column)
        : base("DIVISION", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
