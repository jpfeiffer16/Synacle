using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class AmpersandPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Ampersand;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            if (IsExpressionNode(nodes.LastOrDefault()))
            {
                // Ampersand is a bitwise and operator
                var tkn = tokens[i];
                var left = nodes.Pop();
                var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0];
                return (i, new BitwiseAnd(left, right, tkn.File, tkn.Line, tkn.Column));

            }
            else
            {
                // Ampersand is an address of operator
                var nextNode = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0];
                var addressOfToken = tokens[i - 1];
                return (i, new AddressOf(
                    nextNode,
                    addressOfToken.File,
                    addressOfToken.Line,
                    addressOfToken.Column)
                    { NodeType = ParserContext.NativeTypes.Pointer });
            }
        }
    }
}
