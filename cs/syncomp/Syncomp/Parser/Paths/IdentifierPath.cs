using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class IdentifierPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Identifier;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            AstNode node;
            var token = tokens[i];

            // FunctionCall
            if (i + 1 < tokens.Count && tokens[i + 1].Type == SyntaxTokenType.LeftParen)
            {

                var functionCallToken = tokens[i];
                var nextToken = tokens[i + 1];
                i++;
                var nextClose = GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i, tokens);
                ++i;
                var parametersNodes = ParseTokens(tokens.GetRange(i, nextClose - i), ctx);
                i = nextClose;

                node = new FunctionCall(
                  parametersNodes,
                  token.Token,
                  functionCallToken.File,
                  functionCallToken.Line,
                  functionCallToken.Index
                );
            }
            // Typed variable declaration
            else if (
                i + 1 < tokens.Count
                && (tokens[i + 1].Type == SyntaxTokenType.Identifier
                    //Type is generic
                    || (tokens.Count >= i + 4 && tokens[i + 1].Type == SyntaxTokenType.LessThan && tokens[i + 2].Type == SyntaxTokenType.Identifier && tokens[i + 3].Type == SyntaxTokenType.GreaterThan)))
            {
                var typeDecToken = tokens[i];
                LangType subType = null;
                if (tokens[i + 1].Type == SyntaxTokenType.LessThan)
                {
                    var nextMatching = this.GetNext(i + 1, tokens, SyntaxTokenType.GreaterThan);
                    var typeToken = tokens[nextMatching - 1];
                    subType = ctx.LangTypes.Where(tp => tp.Name == typeToken.Token).FirstOrDefault();
                    i = nextMatching;
                    // ctx.LangTypes.Add(new LangType($"{typeDecToken.Token}<{typeToken.Token}>", null, null, 0, 0 ));
                }
                var nextToken = tokens[++i];
                var type = ctx.LangTypes.Where(tp => tp.Name == token.Token).FirstOrDefault();
                if (type == null)
                    throw new ParseException(i,
                        tokens,
                        nodes,
                        $"Invalid variable declaration. Unknown type '{token.Token}'");
                node = new VariableDeclaration(nextToken.Token, type, typeDecToken.File, typeDecToken.Line, typeDecToken.Index, subType);
            }
            else
            {
                var integerLiteralToken = tokens[i];
                // IntegerLiteral
                if (int.TryParse(token.Token, out _))
                {
                    node = new IntegerLiteral(
                            token.Token,
                            integerLiteralToken.File,
                            integerLiteralToken.Line,
                            integerLiteralToken.Index);
                }
                // Identifier
                else
                {
                    var tkn = tokens[i];
                    node = new Identifier(token.Token, tkn.File, tkn.Line, tkn.Index);
                }
            }

            return (i, node);
        }
    }
}
