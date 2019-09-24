namespace syncomp
{
  public class Incr : AstNode
  {
    public Incr(AstNode parameter, string file, int line, int column)
        : base("INCR", file, line, column)
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}
