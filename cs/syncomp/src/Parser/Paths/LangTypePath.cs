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
          int i, List<SyntaxToken> tokens, List<AstNode> nodes)
        {
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
            return (i, new LangType(ParseTokens(bodyExpression)));
        }
    }
}
