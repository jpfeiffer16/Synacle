using System;
using System.Collections.Generic;

namespace syncomp
{
    public class LangTypePath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.LangType;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var langTypeToken = tokens[i];
            var nameToken = tokens[i + 1];
            if (nameToken.Type  != SyntaxTokenType.Identifier)
            {
                throw new ParseException(i, tokens, nodes, "No type name found");
            }
            var name = nameToken.Token;
            i += 2;
            var typeBodyEnd = GetExpression(
              SyntaxTokenType.LeftCurly,
              SyntaxTokenType.RightCurly,
              i,
              tokens
            );
            var bodyExpression = tokens.GetRange(++i, typeBodyEnd - i);
            i = typeBodyEnd;

            var sectionList = new List<List<SyntaxToken>>();
            var currentList = new List<SyntaxToken>();
            foreach (var tkn in bodyExpression)
            {
                if (tkn.Type == SyntaxTokenType.Comma)
                {
                    sectionList.Add(currentList);
                    currentList = new List<SyntaxToken>();
                }
                else
                {
                    currentList.Add(tkn);
                }
            }
            sectionList.Add(currentList);
            // TODO: Fix!
            // var langType = new LangType(name, ParseTokens(bodyExpression, ctx), langTypeToken.File, langTypeToken.Line, langTypeToken.Index);
            var langType = new LangType(name, ParseTokens(bodyExpression, ctx));
            ctx.LangTypes.Add(langType);
            return (i, langType);
        }
    }
}
