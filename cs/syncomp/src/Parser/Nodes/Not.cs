namespace syncomp
{
  public class Not : AstNode
  {
    public Not(AstNode parameter) : base("NOT")
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}