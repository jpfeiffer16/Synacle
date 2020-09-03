using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class Template
    {
        /// <summary>
        /// Gets the lang type.
        /// </summary>
        /// <value>
        /// The lang type
        /// </value>
        public LangType LangType { get; }
        /// <summary>
        /// Gets the tokens.
        /// </summary>
        /// <value>
        /// The tokens
        /// </value>
        public List<SyntaxToken> Tokens { get; }

        /// <summary>
        /// Initializes a new instance of the <see cref="Template"/> class.
        /// </summary>
        /// <param name="langType">The lang type.</param>
        /// <param name="tokens">The tokens.</param>
        public Template(LangType langType , List<SyntaxToken> tokens)
        {
            Tokens = tokens ?? throw new System.ArgumentNullException(nameof(tokens));
            LangType = langType ?? throw new ArgumentNullException(nameof(langType));
        }

        /// <summary>
        /// This method realizes the template and addes the concrete type to the
        /// type list in the ParserContext.
        /// </summary>
        /// <param name="actualType">The Actual Type to realize.</param>
        public void Realize(LangType actualType, ParserContext ctx)
        {
            // Isolate type parameters and what to replace them with.
            var replacements = WalkTypes(actualType, this.LangType, new Dictionary<string, string>());
            var tokens = Tokens.Select(t => new SyntaxToken {
                Column = t.Column,
                File = t.File,
                Index = t.Index,
                Line = t.Line,
                Token = t.Token,
                Type = t.Type
            }).ToList();

            // Do the actual replacement
            foreach (var token in tokens)
            {
                var tkn = token.Token.Trim();
                if (replacements.ContainsKey(tkn))
                {
                    token.Token = replacements[tkn];
                }
            }

            // Parse the replaced tokens
            new ParserPath().ParseTokens(tokens, ctx);
        }

        private static Dictionary<string, string> WalkTypes(
            LangType actualType, LangType genericType, Dictionary<string, string> replacements)
        {
            if (genericType.IsTypeParameter)
            {
                replacements.Add(genericType.GetName(), actualType.GetName());
            }
            else
            {
                for (var i = 0; i < genericType.SubTypes.Count; i++)
                {
                    var genericSubtype = genericType.SubTypes[i];
                    var actualSubtype = actualType.SubTypes[i];
                    WalkTypes(actualSubtype, genericSubtype, replacements);
                }
            }
            return replacements;
        }
    }
}
