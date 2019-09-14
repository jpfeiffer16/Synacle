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

                var nextToken = tokens[i + 1];
                i++;
                var nextClose = GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i, tokens);
                ++i;
                var parametersNodes = ParseTokens(tokens.GetRange(i, nextClose - i), ctx);
                i = nextClose;

                node = new FunctionCall(
                  parametersNodes,
                  token.Token
                );
            }
            // Type declaration
            else if(i + 1 < tokens.Count && tokens[i + 1].Type == SyntaxTokenType.Identifier)
            {
                var nextToken = tokens[i + 1];
                var type = ctx.LangTypes.Where(tp => tp.Name == token.Token).FirstOrDefault();
                if (type == null)
                    throw new ParseException(i,
                        tokens,
                        nodes,
                        $"Invalid variable declaration. Unknown type '{token.Token}'");
                node = new VariableDeclaration(nextToken.Token, type);
            }
            else
            {
                // IntegerLiteral
                if (int.TryParse(token.Token, out _))
                {
                    node = new IntegerLiteral(token.Token);
                }
                // Identifier
                else
                {
                    node = new Identifier(token.Token);
                }
            }

            return (i, node);
        }
    }
}
