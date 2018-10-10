namespace syncomp
{
  public class VariableAssignment : AstNode
  {
    public AstNode Identifier { get; }
    public AstNode Parameter { get; }
    public VariableAssignment(AstNode identifier, AstNode parameter)
        : base("VARIABLE_ASSIGNMENT")
    {
      this.Identifier = identifier;
      this.Parameter = parameter;
    }

  }
}