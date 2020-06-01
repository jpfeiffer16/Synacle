namespace syncomp
{
    public class Ternary : AstNode
    {
        public Ternary(AstNode condition, AstNode left, AstNode right, string file, int  line, int column) : base("TERNARY", file, line, column)
        {
            this.Condition = condition;
            this.Left = left;
            this.Right = right;
        }

        public AstNode Condition { get; }
        public AstNode Left { get; }
        public AstNode Right { get; }
    }
}
