namespace syncomp
{
    public class AstNode
    {
        public string Type { get; private set; }
        public string File { get; }
        public int Line { get; }
        public int Column { get; }
        public LangType NodeType { get; set; } = ParserContext.NativeTypes.LangVoid;

        public AstNode(string type, string file, int line, int column)
        {
            this.Type = type;
            this.File = file;
            this.Line = line;
            this.Column = column;
        }
    }
}
