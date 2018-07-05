namespace compiler
{
    public class Addition : AstNode {
        public Addition(AstNode left, AstNode right) : base("SUBTRACTION") {
            this.Left = left;
            this.Right = right;
        }

        public AstNode Left { get; }
        public AstNode Right { get; }
    }
}