using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public partial class ParserContext
    {
        public List<Diagnostic> Diagnostics { get; } = new List<Diagnostic>();

        public LangType GetLangType(string name)
        {
            // var type = 
            return LangTypes.Where(l =>
                l.GetName().Replace(" ", string.Empty) == name.Replace(" ", string.Empty))
                .FirstOrDefault();
        }

        public void AddLangType(LangType langType)
        {
            LangTypes.Add(langType);
        }


        private List<LangType> LangTypes { get; set; } = new List<LangType>
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

        public List<Template> Templates = new List<Template>();

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
        /// Generate a parameter by creating a new type that has the specified subtype
        /// and returning it
        /// </summary>
        /// <param name="parentType"></param>
        /// <param name="subType"></param>
        /// <returns>LangType</returns>
        public LangType GetGenericType(LangType parentType, LangType subType)
        {
            var newType = new LangType(name: parentType.Name, body: null, file: null, line: 0, column: 0) { SubTypes = new List<LangType> { subType } };
            this.LangTypes.Add(newType);
            return newType;
        }

        public LangType GetLangType(List<SyntaxToken> tokens, bool validateType = true)
        {
            var name = string.Join(string.Empty, tokens.Select(t => t.Token)).Trim();
            var cachedType = this.GetLangType(name);
            if (cachedType != null)
            {
                return cachedType;
            }
            var type = GetConcreteType(tokens, validateType);
            var genericType = this.Templates.Where(tmpl => tmpl.LangType.Equals(type)).FirstOrDefault();
            if (genericType != null)
            {
                genericType.Realize(type, this);
                type = this.GetLangType(name);
            }
            return type;
        }

        public LangType GetConcreteType(List<SyntaxToken> tokens, bool validateType = true)
        {
            var left = tokens.FirstOrDefault(tkn => tkn.Type == SyntaxTokenType.LessThan);
            // Type  is geneic
            if (!(left is null))
            {
                int leftIndex = tokens.IndexOf(left);
                var simpleTypeToken = tokens.Take(leftIndex).FirstOrDefault();
                if (simpleTypeToken is null) throw new ParseException(left.Column, tokens, null, "No type before <");
                var right = tokens.LastOrDefault(tkn => tkn.Type == SyntaxTokenType.GreaterThan);
                if (right is null) throw new ParseException(left.Column, tokens, null, "No matching angle bracket");
                var subTypeList = new List<List<SyntaxToken>>() { new List<SyntaxToken>() };
                foreach (var tkn in tokens.GetRange(leftIndex + 1, (tokens.IndexOf(right) - leftIndex) - 1))
                {
                    if (tkn.Type == SyntaxTokenType.Comma)
                    {
                        subTypeList.Add(new List<SyntaxToken>());
                    }
                    else
                    {
                        subTypeList.LastOrDefault().Add(tkn);
                    }
                }
                var simpleType = new LangType(
                    simpleTypeToken.Token,
                    new List<VariableDeclaration>(),
                    simpleTypeToken.File,
                    simpleTypeToken.Line,
                    simpleTypeToken.Column);
                simpleType.SubTypes = subTypeList.Select(t => GetConcreteType(t, validateType)).ToList();
                return simpleType;
            }
            // Type is not geneic
            var typeToken = tokens.FirstOrDefault();
            if (typeToken is null) throw new ParseException(0, null, null, "Unable to find type");
            // return new LangType(typeToken.Token, null, typeToken.File, typeToken.Line, typeToken.Index);
            // var langType = ctx.LangTypes.Where(lt => lt.Name == typeToken.Token).FirstOrDefault();
            var langType = this.GetLangType(typeToken.Token);

            if (langType is null)
            {
                if (validateType)
                    throw new TypeNotFoundException(typeToken.Token);
                else
                    langType = new LangType(
                        typeToken.Token,
                        new List<VariableDeclaration>(),
                        typeToken.File,
                        typeToken.Line,
                        typeToken.Column);
            }
            return langType;
        }
    }
}
