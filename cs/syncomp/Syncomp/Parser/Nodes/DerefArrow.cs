namespace syncomp
{
    public class DerefArrow : AstNode
    {
        public DerefArrow(AstNode left, AstNode right, string file, int line, int column)
            : base("DEREFARROW", file, line, column)
        {
            this.Left = left;
            this.Right = right;
        }

        public AstNode Left { get; }
        public AstNode Right { get; }

        public override string ToString() => $"{(this.Left as Identifier).Name}->{(this.Right as Identifier).Name}";
    }
}
