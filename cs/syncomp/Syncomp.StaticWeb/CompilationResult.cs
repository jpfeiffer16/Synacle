using System.Collections.Generic;
using syncomp;

namespace StaticWeb
{
    public class CompilationResult
    {
        public string Assembly { get; set; }
        public List<Diagnostic> Diagnostics { get; set; }
    }
}
