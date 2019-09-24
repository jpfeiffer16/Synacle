namespace syncomp
{
  public class VariableDeclaration : AstNode
  {
    public string Identifier { get; }
    public LangType LangType { get; }

    public VariableDeclaration(string identifier, LangType langType, string file, int line, int column)
        : base("VARIABLE_DECLARATION", file, line, column)
    {
      this.Identifier = identifier;
      this.LangType = langType;
    }
  }
}
