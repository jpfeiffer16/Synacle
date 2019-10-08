namespace syncomp
{
    public class Diagnostic
    {
        public string File { get; set; }
        public int Line { get; set; }
        public int Column { get; set; }
        public string Message { get; set; }
        public string FullMessage => $"{Code}: {Message}";
        public DiagnosticCode Code { get; set; }

        public Diagnostic(string file, int line, int column, string message, DiagnosticCode code)
        {
            this.File = file;
            this.Line = line;
            this.Column = column;
            this.Message = message;
            this.Code = code;
        }
    }
}
