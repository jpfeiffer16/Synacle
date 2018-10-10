namespace syncomp
{
  public class StringLiteral : AstNode
  {
    public StringLiteral(string value) : base("STRING_LITTERAL")
    {
      this.Value = value;
    }

    public string Value { get; }
  }
}