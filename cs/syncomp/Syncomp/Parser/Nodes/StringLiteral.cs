namespace syncomp
{
    public class StringLiteral : AstNode
    {
        public override int Length => this.Value.Length + 2;
        public StringLiteral(string value, string file, int line, int column)
            : base("STRING_LITTERAL", file, line, column)
        {
            this.Value = value;
            this.NodeType = ParserContext.NativeTypes.LangString;
        }

        public string Value { get; }
    }
}
