namespace syncomp
{
  public class Return : AstNode
  {
    public Return(AstNode parameter) : base("RETURN")
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}