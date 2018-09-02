namespace syncomp
{
  public class Decr : AstNode {
    public Decr(AstNode parameter) : base("DECR") {
      this.Parameter = parameter;
    }

    public AstNode Parameter { get; }
  }
}