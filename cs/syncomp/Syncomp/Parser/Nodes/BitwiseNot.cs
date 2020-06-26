namespace syncomp
{
    public class BitwiseNot : AstNode
    {
        public AstNode Parameter { get; set; }

        public BitwiseNot(AstNode parameter, string file, int line, int column)
            : base("BITWISE_NOT", file, line, column)
        {
            Parameter = parameter;
        }
    }
}
