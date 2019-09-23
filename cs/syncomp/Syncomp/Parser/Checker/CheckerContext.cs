using System.Collections.Generic;

namespace syncomp
{
    public class CheckerContext
    {
        public List<LangType> Types { get; set; }
            = new List<LangType>();
        public CheckerVariableStack Variables { get; set; } = new CheckerVariableStack();
    }
}
