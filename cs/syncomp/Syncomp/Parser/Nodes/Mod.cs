namespace syncomp
{
  public class Mod : AstNode
  {
    public Mod(AstNode left, AstNode right, string file, int line, int column)
        : base("MOD", file, line, column)
    {
      this.Left = left;
      this.Right = right;
    }

    public AstNode Left { get; }
    public AstNode Right { get; }
  }
}
