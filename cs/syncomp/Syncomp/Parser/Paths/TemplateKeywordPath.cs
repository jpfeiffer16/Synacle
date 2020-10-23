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
                ctx.Templates.Add(new TypeTemplate(templateType, templateTokens));
                i = nextCloseCurly;
            }
            else if (nextToken.Type == SyntaxTokenType.FunctionDeclaration)
            {
                // Template function
                var nextOpenParen = GetNext(i, tokens, SyntaxTokenType.LeftParen);
                i++;
                var functionName = string.Join(string.Empty, tokens.GetRange(i, nextOpenParen - i).Select(t => t.Token));
                var nextOpenCurly = GetNext(i, tokens, SyntaxTokenType.LeftCurly);
                var nextCloseCurly = GetExpression(SyntaxTokenType.LeftCurly, SyntaxTokenType.RightCurly, nextOpenCurly, tokens);
                var functionTokens = tokens.GetRange(i, (nextCloseCurly - i) + 1);
                i = nextCloseCurly;
                var templateFunctionDeclaration = new TemplateFunctionDeclaration(functionName, functionTokens, templateToken.File, templateToken.Line, templateToken.Column);
                ctx.AddTempateFunction(templateFunctionDeclaration);
                return (i, templateFunctionDeclaration);
            }
            // TODO: Return an actual type if necessary
            return (i, new AstNode("EMPTY", templateToken.File, templateToken.Line, templateToken.Column));
        }
    }
}
