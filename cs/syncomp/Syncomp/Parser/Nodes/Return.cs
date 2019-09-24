namespace syncomp
{
  public class Return : AstNode
  {
    public Return(AstNode parameter, string file, int line, int column)
        : base("RETURN", file, line, column)
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}
