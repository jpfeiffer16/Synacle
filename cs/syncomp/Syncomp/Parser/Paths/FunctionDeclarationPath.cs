using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class FunctionDeclarationPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.FunctionDeclaration;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var functionToken = tokens[i];
            var name = tokens[++i];
            if (name.Type != SyntaxTokenType.Identifier)
            {
                name = null;
                i--;
            }
            i++;
            var nextClosingParen = GetExpression(
              SyntaxTokenType.LeftParen,
              SyntaxTokenType.RightParen,
              i,
              tokens
            );
            ++i;
            var parameters = ParseTokens(
              tokens.GetRange(i, nextClosingParen - i),
              ctx
            )
              // Catch any params that are not VariableDeclaration types
              // This cast will fail if any are not the right type
              .Cast<VariableDeclaration>()
              .Cast<AstNode>()
              .ToList();

            i = GetNextNonWhitespace(nextClosingParen + 1, tokens);

            var langType = ParserContext.NativeTypes.LangVoid;
            if (tokens[i].Type == SyntaxTokenType.Colon)
            {
                i++;
                var type = tokens[GetNextNonWhitespace(i, tokens)];
                langType = ctx.LangTypes.Where(tp => tp.Name == type.Token).FirstOrDefault();
                i++;
                i = GetNextNonWhitespace(i, tokens);
            }

            var nextClosingCurly = GetExpression(
              SyntaxTokenType.LeftCurly,
              SyntaxTokenType.RightCurly,
              i,
              tokens
            );

            var expression = ParseTokens(
              tokens.GetRange(i, nextClosingCurly - i + 1),
              ctx
            );

            i = nextClosingCurly;

            return (i, new FunctionDeclaration(
                parameters,
                expression,
                name?.Token,
                functionToken.File,
                functionToken.Line,
                functionToken.Index) { NodeType = langType });
        }
    }
}
