namespace syncomp
{
  public class Deref : AstNode
  {
    public Deref(AstNode parameter, string file, int line, int column)
        : base("DEREF", file, line, column)
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}
