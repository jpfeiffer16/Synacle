using System.Collections.Generic;

namespace syncomp
{
    public class ReturnPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Return;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var nextToken = tokens[i + 1];
            AstNode node;
            if (nextToken.Type != SyntaxTokenType.SemiColon)
            {
                node = new Return(
                        ParseTokens(new List<SyntaxToken> { nextToken }, ctx)[0],
                        tkn.File,
                        tkn.Line,
                        tkn.Index);
                i++;
            }
            else
            {
                node = new Return(null, tkn.File, tkn.Line, tkn.Index);
            }
            return (i, node);
        }
    }
}
