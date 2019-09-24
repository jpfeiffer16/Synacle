namespace syncomp
{
  public class Not : AstNode
  {
    public Not(AstNode parameter, string file, int line, int column)
        : base("NOT", file, line, column)
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}
