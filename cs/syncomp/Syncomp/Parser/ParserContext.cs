using System.Collections.Generic;

namespace syncomp
{
    public class ParserContext
    {
        // TODO: Fix!
        public List<LangType> LangTypes { get; set; } = new List<LangType>
        {
            // NativeTypes.LangVar,
            NativeTypes.LangInt,
            NativeTypes.LangString,
            NativeTypes.LangFunctionPointer,
            NativeTypes.LangVoid,
            NativeTypes.Pointer
        };
        public static class NativeTypes
        {
            // public static LangType LangVar { get; } = new LangType(name: "var", body: null, file: null, line: 0, column: 0);
            public static LangType LangInt { get; } = new LangType(name: "int", body: null, file: null, line: 0, column: 0);
            public static LangType LangString { get; } = new LangType(name: "string", body: null, file: null, line: 0, column: 0);
            public static LangType LangFunctionPointer { get; } = new LangType(name: "func", body: null, file: null, line: 0, column: 0);
            public static LangType LangVoid { get; } = new LangType(name: "void", body: null, file: null, line: 0, column: 0);
            public static LangType Pointer { get; } = new LangType(name: "ptr", body: null, file: null, line: 0, column: 0);
        }
    }
}
