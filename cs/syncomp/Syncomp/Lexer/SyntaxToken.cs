namespace syncomp
{
    public class SyntaxToken
    {
        public string Token { get; set; }
        public SyntaxTokenType Type { get; set; }
        public int Column { get; set; }
        public int Index { get; set; }
        public int Line { get; set; }
        public string File { get; set; }
    }
}
