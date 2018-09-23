using System.Collections.Generic;

namespace syncomp
{
    public class Context {
        public VariableStack Variables = new VariableStack();
        public int RegisterLevel = 0;
        public bool HasSubtractSupport = false;
        public bool HasNotSupport = false;
        public bool HasOrSupport = false;
        public bool HasAndSupport = false;
        public bool HasDivisionSupport = false;
    }
}