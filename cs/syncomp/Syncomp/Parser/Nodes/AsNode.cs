namespace syncomp
{
  public class As : AstNode
  {
    public As(AstNode from, LangType to, string file, int line, int column)
        : base("AS", file, line, column)
    {
      this.From = from;
      this.To = to;
    }

    public AstNode From { get; }
    public LangType To { get; }
  }
}
