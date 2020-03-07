using System.Collections.Generic;
using System.Linq;

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
            i = this.GetNextNonWhitespace(i + 2, tokens);
            var typeBodyEnd = GetExpression(
              SyntaxTokenType.LeftCurly,
              SyntaxTokenType.RightCurly,
              i,
              tokens
            );
            var bodyExpression = tokens.GetRange(i, typeBodyEnd - i);
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
            var langType = new LangType(
                name,
                ParseTokens(bodyExpression, ctx).Cast<VariableDeclaration>().ToList(),
                langTypeToken.File,
                langTypeToken.Line,
                langTypeToken.Column);
            ctx.LangTypes.Add(langType);
            return (i, langType);
        }
    }
}
