using System.Collections.Generic;

namespace syncomp
{
    public class ParserContext
    {
        public List<LangType> LangTypes { get; set; } = new List<LangType>
        {
            NativeTypes.LangVar,
            NativeTypes.LangInt
        };
        public static class NativeTypes
        {
            public static LangType LangVar { get; } = new LangType("var", null);
            public static LangType LangInt { get; } = new LangType("int", null);
        }
    }
}
