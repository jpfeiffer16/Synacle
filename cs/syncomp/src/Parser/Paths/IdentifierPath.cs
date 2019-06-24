using System.Collections.Generic;

namespace syncomp
{
    public class IdentifierPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Identifier;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes)
        {
            SyntaxToken nextToken;
            AstNode node;
            var token = tokens[i];

            if (i + 1 < tokens.Count && (nextToken = tokens[i + 1]).Type == SyntaxTokenType.LeftParen)
            {

                i++;
                var nextClose = GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i, tokens);
                ++i;
                var parametersNodes = ParseTokens(tokens.GetRange(i, nextClose - i));
                i = nextClose;

                node = new FunctionCall(
                  parametersNodes,
                  token.Token
                );
            }
            else
            {
                if (int.TryParse(token.Token, out _))
                {
                    node = new IntegerLiteral(token.Token);
                }
                else
                {
                    node = new Identifier(token.Token);
                }
            }

            return (i, node);
        }
    }
}
