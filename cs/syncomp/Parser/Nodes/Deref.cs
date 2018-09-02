namespace compiler
{
  public class Deref : AstNode {
    public Deref(AstNode parameter) : base("DEREF") {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}