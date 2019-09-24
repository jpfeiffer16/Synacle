namespace syncomp
{
  public class Decr : AstNode
  {
    public Decr(AstNode parameter, string file, int line, int column)
        : base("DECR", file, line, column)
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}
