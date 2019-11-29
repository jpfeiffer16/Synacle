using System.Collections.Generic;

namespace syncomp
{
    public class AddressOfPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.AddressOf;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var nextNode = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0];
            var addressOfToken = tokens[i - 1];
            return (i, new AddressOf(
                nextNode,
                addressOfToken.File,
                addressOfToken.Line,
                addressOfToken.Index)
                { NodeType = ParserContext.NativeTypes.Pointer });
        }
    }
}
