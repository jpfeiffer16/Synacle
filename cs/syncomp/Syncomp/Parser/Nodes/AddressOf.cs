namespace syncomp
{
  public class AddressOf : AstNode
  {
    public AddressOf(AstNode parameter, string file, int line, int column)
        : base("ADDRESSOF", file, line, column)
    {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}
