using System.Collections.Generic;

namespace syncomp
{
    public class ParserContext
    {
        // TODO: Fix!
        public List<LangType> LangTypes { get; set; } = new List<LangType>
        {
            // This should not actually be used in the type system. But instead
            // only as an indicator that a type needs to be bound to a variable
            // for implicit typing
            // NativeTypes.LangVar,
            NativeTypes.LangInt,
            NativeTypes.LangString,
            NativeTypes.LangFunctionPointer,
            NativeTypes.LangVoid,
            NativeTypes.Pointer
        };

        public static class NativeTypes
        {
            public static LangType Implicit { get; } = new LangType(name: "implicit", body: null, file: null, line: 0, column: 0);
            public static LangType LangInt { get; } = new LangType(name: "int", body: null, file: null, line: 0, column: 0);
            public static LangType LangString { get; } = new LangType(name: "string", body: null, file: null, line: 0, column: 0);
            public static LangType LangFunctionPointer { get; } = new LangType(name: "func", body: null, file: null, line: 0, column: 0);
            public static LangType LangVoid { get; } = new LangType(name: "void", body: null, file: null, line: 0, column: 0);
            public static LangType Pointer { get; } = new LangType(name: "ptr", body: null, file: null, line: 0, column: 0);
        }

        /// <summary>
        /// Generisize a parameter by creating a new type that has the specified subtype
        /// and returning it
        /// </summary>
        /// <param name="parentType"></param>
        /// <param name="subType"></param>
        /// <returns>LangType</returns>
        public LangType GetGenericType(LangType parentType, LangType subType)
        {
            var newType = new LangType(name: parentType.Name, body: null, file: null, line: 0, column: 0) { SubTypes = new List<LangType> { subType  } };
            this.LangTypes.Add(newType);
            return newType;
        }
    }
}
