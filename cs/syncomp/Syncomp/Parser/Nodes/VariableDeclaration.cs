namespace syncomp
{
  public class VariableDeclaration : AstNode
  {
    public string Identifier { get; }
    public LangType LangType { get; }

    public VariableDeclaration(string identifier, LangType langType) : base("VARIABLE_DECLARATION")
    {
      this.Identifier = identifier;
      this.LangType = langType;
    }
  }
}
