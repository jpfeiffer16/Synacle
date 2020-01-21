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


                // var paramTokens = new List<List<SyntaxToken>>() { new List<SyntaxToken>() };
                // foreach (var tkn in tokens.GetRange(i, nextClose - i))
                // {
                //     if (tkn.Type == SyntaxTokenType.Comma)
                //     {
                //         paramTokens.Add(new List<SyntaxToken>());
                //     }
                //     else
                //     {
                //         paramTokens.LastOrDefault().Add(tkn);
                //     }
                // }
                // var parametersNodes = paramTokens
                //     .SelectMany(tkns => ParseTokens(tkns, ctx)).ToList();

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
                    || (tokens.Count >= i + 4 
                        && tokens[i + 1].Type == SyntaxTokenType.LessThan
                        && tokens[i + 2].Type == SyntaxTokenType.Identifier 
                        && (tokens[i + 3].Type == SyntaxTokenType.GreaterThan || tokens[i+3].Type == SyntaxTokenType.Comma))))
            {
                var typeDecToken = tokens[i];
                var typeTokens = new List<SyntaxToken> { typeDecToken };
                if (tokens[i + 1].Type == SyntaxTokenType.LessThan)
                {
                    var nextMatching = this.GetExpression(SyntaxTokenType.LessThan, SyntaxTokenType.GreaterThan, i + 1, tokens);
                    typeTokens = tokens.GetRange(i, (nextMatching - i) + 1);
                    i = nextMatching;
                }
                var type = GetLangType(typeTokens, ctx);
                var nextToken = tokens[++i];
                if (type == null)
                    throw new ParseException(i,
                        tokens,
                        nodes,
                        $"Invalid variable declaration. Unknown type '{token.Token}'");
                node = new VariableDeclaration(nextToken.Token, type, typeDecToken.File, typeDecToken.Line, typeDecToken.Index);
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
