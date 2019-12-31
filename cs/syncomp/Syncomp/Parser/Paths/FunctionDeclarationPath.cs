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
                i = GetNextNonWhitespace(i, tokens);
                var curlyStart = GetNext(i, tokens, SyntaxTokenType.LeftCurly);
                var typeNameTokens = tokens.GetRange(i, curlyStart - i);
                i = curlyStart;
                langType = GetLangType(typeNameTokens);
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

        private LangType GetLangType(List<SyntaxToken> tokens)
        {
            var left = tokens.FirstOrDefault(tkn => tkn.Type == SyntaxTokenType.LessThan);
            // Type  is geneic
            if (!(left is null))
            {
                int leftIndex = tokens.IndexOf(left);
                var simpleTypeToken = tokens.Take(leftIndex).FirstOrDefault();
                if (simpleTypeToken is null) throw new ParseException(left.Index, tokens, null, "No type before <");
                var right = tokens.LastOrDefault(tkn => tkn.Type == SyntaxTokenType.GreaterThan);
                if (right is null) throw new ParseException(left.Index, tokens, null, "No matching angle bracket");
                var simpleType = new LangType(
                    simpleTypeToken.Token,
                    null,
                    simpleTypeToken.File,
                    simpleTypeToken.Line,
                    simpleTypeToken.Index);
                simpleType.SubType = GetLangType(tokens.GetRange(leftIndex + 1, (tokens.IndexOf(right) - leftIndex) - 1));
                return simpleType;
            }
            // Type is not geneic
            var typeToken = tokens.FirstOrDefault();
            if (typeToken is null) throw new ParseException(0, null, null, "Unable to find type");
            return new LangType(typeToken.Token, null, typeToken.File, typeToken.Line, typeToken.Index);
        }
    }
}
