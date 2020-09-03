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


                var paramTokens = new List<List<SyntaxToken>>() { new List<SyntaxToken>() };

                var functionCallParamsList = tokens.GetRange(i, nextClose - i);
                for (int j = 0; j < functionCallParamsList.Count; j++)
                {
                    var tkn = functionCallParamsList[j];
                    if (tkn.Type == SyntaxTokenType.Comma)
                    {
                        paramTokens.Add(new List<SyntaxToken>());
                    }
                    if (tkn.Type == SyntaxTokenType.LeftParen)
                    {
                        var expressionEnd = GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, j, functionCallParamsList);
                        paramTokens.LastOrDefault().AddRange(functionCallParamsList.GetRange(j, expressionEnd - j + 1));
                        j = expressionEnd;
                    }
                    else
                    {
                        paramTokens.LastOrDefault().Add(tkn);
                    }
                }
                var parametersNodes = paramTokens
                    .SelectMany(tkns => ParseTokens(tkns, ctx)).ToList();

                // var parametersNodes = ParseTokens(tokens.GetRange(i, nextClose - i), ctx);
                i = nextClose;

                node = new FunctionCall(
                  parametersNodes,
                  ParseTokens(new List<SyntaxToken> { token }, ctx).FirstOrDefault(),
                  functionCallToken.File,
                  functionCallToken.Line,
                  functionCallToken.Column
                );
            }
            // Typed variable declaration
            else if (
                i + 1 < tokens.Count
                && (tokens[i + 1].Type == SyntaxTokenType.Identifier
                    //Type is generic
                    || ContainsGenericType(i, tokens)))
            {
                var typeDecToken = tokens[i];
                var typeTokens = new List<SyntaxToken> { typeDecToken };
                if (tokens[i + 1].Type == SyntaxTokenType.LessThan)
                {
                    var nextMatching = this.GetExpression(SyntaxTokenType.LessThan, SyntaxTokenType.GreaterThan, i + 1, tokens);
                    typeTokens = tokens.GetRange(i, (nextMatching - i) + 1);
                    i = nextMatching;
                }
                var type = ctx.GetLangType(typeTokens);
                if (type == null)
                    throw new ParseException(i,
                        tokens,
                        nodes,
                        $"Invalid variable declaration. Unknown type '{token.Token}'");
                var nextToken = tokens[++i];
                if (nextToken.Type != SyntaxTokenType.Ampersand)
                {
                    node = new VariableDeclaration(nextToken.Token, type, typeDecToken.File, typeDecToken.Line, typeDecToken.Column);
                }
                else
                {
                    nextToken = tokens[++i];
                    node = new PointerDeclaration(nextToken.Token, type, typeDecToken.File, typeDecToken.Line, typeDecToken.Column);
                }
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
                            integerLiteralToken.Column);
                }
                // Identifier
                else
                {
                    var tkn = tokens[i];
                    node = new Identifier(token.Token, tkn.File, tkn.Line, tkn.Column);
                }
            }

            return (i, node);
        }

        private bool ContainsGenericType(int index, List<SyntaxToken> tokens)
        {
            if (tokens[index + 1].Type != SyntaxTokenType.LessThan)
            {
                return false;
            }
            var containsOpener = false;
            var depth = 0;
            // var opens = new List<int>();
            // var closes = new List<int>();
            for (; index < tokens.Count(); index++)
            {
                var token = tokens[index];
                if (token.Type == SyntaxTokenType.SemiColon)
                    break;
                switch (token.Type)
                {
                    case SyntaxTokenType.LessThan:
                        containsOpener = true;
                        depth++;
                        break;
                    case SyntaxTokenType.GreaterThan:
                        depth--;
                        break;
                }
            }
            return containsOpener && depth == 0;
        }
    }
}
