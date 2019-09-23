namespace syncomp
{
    public class Diagnostic
    {
        public string File { get; set; }
        public int Line { get; set; }
        public string Message { get; set; }
        public string FullMessage => $"{Code}: {Message}";
        public DiagnosticCode Code { get; set; }
    }
}
