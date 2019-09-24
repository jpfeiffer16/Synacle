namespace syncomp
{
  public class Breakpoint : AstNode
  {
    public Breakpoint(string file, int line, int column)
        : base("BREAKPOINT", file, line, column) { }
  }
}
