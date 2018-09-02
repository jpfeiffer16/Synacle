namespace compiler
{
    public class Mod : AstNode {
        public Mod(AstNode left, AstNode right) : base("MOD") {
            this.Left = left;
            this.Right = right;
        }

        public AstNode Left { get; }
        public AstNode Right { get; }
    }
}