namespace syncomp
{
    public class Multiplication : AstNode {
        public Multiplication(AstNode left, AstNode right) : base("MULTIPLICATION") {
            this.Left = left;
            this.Right = right;
        }

        public AstNode Left { get; }
        public AstNode Right { get; }
    }
}