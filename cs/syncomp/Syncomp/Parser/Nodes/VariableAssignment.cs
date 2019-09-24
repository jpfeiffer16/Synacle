namespace syncomp
{
  public class VariableAssignment : AstNode
  {
    public AstNode Identifier { get; }
    public AstNode Parameter { get; }
    public VariableAssignment(AstNode identifier, AstNode parameter, string file, int line, int column)
        : base("VARIABLE_ASSIGNMENT", file, line, column)
    {
      this.Identifier = identifier;
      this.Parameter = parameter;
    }

  }
}
