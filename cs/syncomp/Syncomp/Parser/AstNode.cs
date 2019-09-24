namespace syncomp
{
    public class AstNode
    {
        public string Type { get; private set; }
        public string File { get; }
        public int Column { get; }

        public AstNode(string type, string file, int line, int column)
        {
            this.Type = type;
            this.File = file;
            this.Column = column;
        }
    }
}
