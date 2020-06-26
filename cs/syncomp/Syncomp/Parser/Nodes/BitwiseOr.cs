
namespace syncomp
{
    public class BitwiseOr : AstNode
    {
        public BitwiseOr(AstNode left, AstNode right, string file, int line, int column)
            : base("BITWISE_OR", file, line, column)
        {
            Left = left;
            Right = right;
        }

        public AstNode Left { get; }
        public AstNode Right { get; }
    }
}
