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
            var bodyExpression = tokens.GetRange(i, typeBodyEnd - i);
            i = typeBodyEnd;

            var sectionList = new List<List<SyntaxToken>>();
            var currentList = new List<SyntaxToken>();
            foreach (var tkn in bodyExpression)
            {
                // TODO: At some point, deprecate the use of Comma to separate members
                if (tkn.Type == SyntaxTokenType.SemiColon || tkn.Type == SyntaxTokenType.Comma)
                {
                    sectionList.Add(currentList);
                    currentList = new List<SyntaxToken>();
                    if (tkn.Type == SyntaxTokenType.Comma)
                    {
                        ctx.Diagnostics.Add(
                            new Diagnostic(tkn.File, tkn.Line, tkn.Column, "Separating members with commas is being deprecated", DiagnosticCode.Warning) {
                                Level = DiagnosticCodeLevel.Warning, });
                    }
                }
                else
                {
                    currentList.Add(tkn);
                }
            }
            sectionList.Add(currentList);

            var langType = ctx.GetConcreteType(nameTokens.ToList(), validateType: false);

            ctx.AddLangType(langType);
            langType.Body.AddRange(ParseTokens(bodyExpression, ctx).Cast<VariableDeclaration>().ToList());
            return (i, langType);
        }
    }
}
