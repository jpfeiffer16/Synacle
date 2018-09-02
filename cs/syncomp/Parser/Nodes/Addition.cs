namespace syncomp
{
    public class Addition : AstNode {
        public Addition(AstNode left, AstNode right) : base("ADDITION") {
            this.Left = left;
            this.Right = right;
        }

        public AstNode Left { get; }
        public AstNode Right { get; }
    }
}