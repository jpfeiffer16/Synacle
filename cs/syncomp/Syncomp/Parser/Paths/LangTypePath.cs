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
            ++i;
            var nextOpenCurlyIndex = GetNext(i, tokens, SyntaxTokenType.LeftCurly);
            var nameTokens = tokens.GetRange(i, nextOpenCurlyIndex - (i)).Where(t => !string.IsNullOrWhiteSpace(t.Token)).ToList();
            var name = string.Join(string.Empty, nameTokens.Select(t => t.Token));
            // i = this.GetNextNonWhitespace(i + 2, tokens);
            i = nextOpenCurlyIndex;
            var typeBodyEnd = GetExpression(
              SyntaxTokenType.LeftCurly,
              SyntaxTokenType.RightCurly,
              i,
              tokens
            );
            i++;
            var bodyExpression = tokens.GetRange(i, typeBodyEnd - i);
            i = typeBodyEnd;

            var langType = ctx.GetConcreteType(nameTokens.ToList(), validateType: false);

            ctx.AddLangType(langType);
            langType.Body.AddRange(ParseTokens(bodyExpression, ctx).Cast<VariableDeclaration>().ToList());
            return (i, langType);
        }
    }
}
