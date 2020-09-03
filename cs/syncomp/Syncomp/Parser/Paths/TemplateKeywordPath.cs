using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class TemplateKeywordPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.TemplateKeyword;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var templateToken = tokens[i];
            var nextTokenIndex = GetNextNonWhitespace(i + 1, tokens);
            var nextToken = tokens[nextTokenIndex];
            if (nextToken.Type == SyntaxTokenType.LangType)
            {
                // Template type
                var nextOpenCurly = GetNext(i, tokens, SyntaxTokenType.LeftCurly);
                var nextCloseCurly = GetExpression(SyntaxTokenType.LeftCurly, SyntaxTokenType.RightCurly, nextOpenCurly, tokens);
                var tkns = tokens.GetRange(nextTokenIndex + 1, nextOpenCurly - (nextTokenIndex + 1)).Where(t => !string.IsNullOrWhiteSpace(t.Token)).ToList();
                var name = string.Join(string.Empty, tkns.Select(t => t.Token)).Trim();
                var templateType = ctx.GetLangType(tkns, validateType: false);
                foreach (var subtype in templateType?.SubTypes)
                        subtype.ValidateTypeParameters(ctx);
                var templateTokens = tokens.GetRange(nextTokenIndex, (nextCloseCurly - nextTokenIndex) + 1);
                ctx.Templates.Add(new Template(templateType, templateTokens));
                i = nextCloseCurly;
            }
            else
            {
                // TODO: Implement this
                // Template function
                throw new NotImplementedException();
            }
            // TODO: Return an actual type if necessary
            return (i, new AstNode("EMPTY", templateToken.File, templateToken.Line, templateToken.Column));
        }
    }
}
