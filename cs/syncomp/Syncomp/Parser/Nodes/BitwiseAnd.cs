namespace syncomp
{
    public class BitwiseAnd : AstNode
    {
        public BitwiseAnd(AstNode left, AstNode right, string file, int line, int column)
            : base("BITWISE_AND", file, line, column)
        {
            Left = left;
            Right = right;
        }

        public AstNode Left { get; }
        public AstNode Right { get; }
    }
}
