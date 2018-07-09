using System.Collections.Generic;

namespace compiler
{
    public class Context {
        // public List<Variable> Variables = new List<Variable>();
        public VariableStack Variables = new VariableStack();
        public int RegisterLevel = 0;
        public bool HasSubtractSupport = false;
        public bool HasNotSupport = false;
        public bool HasOrSupport = false;
        public bool HasDivisionSupport = false;
    }
}