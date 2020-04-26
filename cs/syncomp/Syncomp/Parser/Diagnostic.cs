namespace syncomp
{
    public class Diagnostic
    {
        public string File { get; }
        public int Line { get; }
        public int Column { get; }
        public int EndLine { get; }
        public int EndColumn { get; }

        public string Message { get; }
        public string FullMessage => $"{Code}: {Message}";
        public DiagnosticCode Code { get; }
        public DiagnosticCodeLevel Level { get; set; } = DiagnosticCodeLevel.Error;

        public Diagnostic(
            string file, int line, int column, string message, DiagnosticCode code)
            : this(file, line, column, line, column + 1, message, code)
        { }

        public Diagnostic(
            string file, int line, int column, int length, string message, DiagnosticCode code)
            : this(file, line, column, line, column + length, message, code)
        { }

        public Diagnostic(
            string file, int line, int column, int endLine, int endColumn, string message, DiagnosticCode code)
        {
            this.File = file;
            this.Line = line;
            this.Column = column;
            this.EndLine = endLine;
            this.EndColumn = endColumn;
            this.Message = message;
            this.Code = code;
        }
    }
}
