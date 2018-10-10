namespace syncomp
{
  public class AddressOf : AstNode
  {
    public AddressOf(AstNode parameter) : base("ADDRESSOF")
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}