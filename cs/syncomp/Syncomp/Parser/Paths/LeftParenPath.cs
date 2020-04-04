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
            if (lastNode is DerefArrow || lastNode is Dot)
            {
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
                var expressionEnd = this.GetExpression(
                  SyntaxTokenType.LeftParen,
                  SyntaxTokenType.RightParen,
                  i,
                  tokens
                );

                ++i;
                // For now make the right most node the NodeType of the ParenGroup
                // Should eventually enforce that the expression resolve to one node
                var childNodes = ParseTokens(tokens.GetRange(i, expressionEnd - i), ctx);
                var nodeType = ParserContext.NativeTypes.LangVoid;
                if (childNodes.Count > 0)
                    nodeType = childNodes.LastOrDefault().NodeType;
                node = new ParenGroup(
                  childNodes,
                  token.File,
                  token.Line,
                  token.Column
                ) { NodeType = nodeType };

                i = expressionEnd + 1;

            }
            return (i, node);
        }
    }
}
