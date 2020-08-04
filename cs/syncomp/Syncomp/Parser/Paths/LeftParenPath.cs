using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class LeftParenPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.LeftParen;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            AstNode node;
            var token = tokens[i];
            var lastNode = nodes.LastOrDefault();
            var nextClose = GetExpression(SyntaxTokenType.LeftParen, SyntaxTokenType.RightParen, i, tokens);
            // Lambda definition
            if (LineContains(i, tokens, SyntaxTokenType.LambdaArrow))
            {
                var returnType = ParserContext.NativeTypes.LangVoid;
                ++i;
                var parameters = ParseTokens(tokens.GetRange(i, nextClose - i), ctx);
                i = GetNextNonWhitespace(nextClose + 1, tokens);

                if (tokens[i].Type == SyntaxTokenType.Colon)
                {
                    ++i;
                    i = GetNextNonWhitespace(i, tokens);
                    var lambdaArrowIndex = GetNext(i, tokens, SyntaxTokenType.LambdaArrow);
                    var typeNameTokens = tokens.GetRange(i, lambdaArrowIndex - i);
                    i = GetNextNonWhitespace(lambdaArrowIndex + 1, tokens);
                    returnType = GetLangType(typeNameTokens, ctx);
                }
                else
                {
                    i = GetNextNonWhitespace(i + 1, tokens);
                }

                // i = nextClose + 3;
                List<AstNode> expression;
                // Full expression
                if (tokens[i].Type == SyntaxTokenType.LeftCurly)
                {
                    var nextClosingCurly = GetExpression(
                      SyntaxTokenType.LeftCurly,
                      SyntaxTokenType.RightCurly,
                      i,
                      tokens
                    );

                    expression = ParseTokens(tokens.GetRange(i, nextClosingCurly - i + 1), ctx);
                    i = nextClosingCurly + 1;
                }
                //Expression bodied method
                else
                {
                    // TODO: This might be a problem when we start doing reversable asts.
                    // The best thing to do then would probably be to have a LambdaDeclaration type
                    // that inherits from FunctionDeclaration. That way we could reliably reverse lambda defs
                    // to the proper syntax.
                    var nextTerm = GetNextTerminator(i, tokens);
                    // expression = ParseTokens(tokens.GetRange(i, nextTerm - i), ctx);
                    var returnExpression = ParseTokens(
                        tokens.GetRange(i, nextTerm - i), ctx).FirstOrDefault();
                    expression = new List<AstNode>
                    {

                        new Return(returnExpression, null, 0, 0) { NodeType = returnExpression.NodeType }
                    };
                    i = nextTerm;
                }

                var langType = new LangType("func", null, null, 0, 0);
                langType.SubTypes.AddRange(parameters.Select(p => p.NodeType));
                langType.SubTypes.Add(returnType);

                node = new FunctionDeclaration(parameters, expression, null, token.File, token.Line, token.Column)
                {
                    ReturnType = returnType,
                    NodeType = langType
                };
            }
            // FunctionCall on a field
            else if (lastNode is DerefArrow || lastNode is Dot)
            {
                nodes.Pop();
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
                i = nextClose;

                node = new FunctionCall(
                    parametersNodes,
                    lastNode,
                    token.File,
                    token.Line,
                    token.Column
                );
            }
            else 
            {

                ++i;
                // For now make the right most node the NodeType of the ParenGroup
                // Should eventually enforce that the expression resolve to one node
                var childNodes = ParseTokens(tokens.GetRange(i, nextClose - i), ctx);
                var nodeType = ParserContext.NativeTypes.LangVoid;
                if (childNodes.Count > 0)
                    nodeType = childNodes.LastOrDefault().NodeType;
                node = new ParenGroup(
                  childNodes,
                  token.File,
                  token.Line,
                  token.Column
                ) { NodeType = nodeType };

                // i = nextClose + 1;
                i = nextClose;

            }
            return (i, node);
        }
    }
}
