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
          int i, List<SyntaxToken> tokens, List<AstNode> nodes)
        {
            var nextNode = ParseTokens(new List<SyntaxToken> { tokens[++i] })[0];
            return (i, new AddressOf(nextNode));
        }
    }
}
