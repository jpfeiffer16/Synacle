using System;
using System.Collections.Generic;

namespace syncomp
{
    public class BreakpointEmitter : IEmitter
    {
        public Type Match => typeof(Breakpoint);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            return new List<string>{
              "breakpoint"
            };
        }
    }
}
