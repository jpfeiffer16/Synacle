namespace syncomp
{
  public class Incr : AstNode {
    public Incr(AstNode parameter) : base("INCR") {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}