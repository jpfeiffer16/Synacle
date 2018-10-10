namespace syncomp
{
  public class IntegerLiteral : AstNode
  {
    public string Value { get; }
    public IntegerLiteral(string value) : base("INTEGER_LITERAL")
    {
      this.Value = value;
    }
  }
}