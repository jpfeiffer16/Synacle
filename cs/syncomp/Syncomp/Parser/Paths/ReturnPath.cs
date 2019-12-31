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
            var nextSemicolon = GetNext(i, tokens, SyntaxTokenType.SemiColon);
            var returnExpression = tokens.GetRange(++i, nextSemicolon - i);
            i = nextSemicolon;
            if (nextToken.Type != SyntaxTokenType.SemiColon)
            {
                node = new Return(
                        ParseTokens(returnExpression, ctx)[0],
                        tkn.File,
                        tkn.Line,
                        tkn.Index);
            }
            else
            {
                node = new Return(null, tkn.File, tkn.Line, tkn.Index);
            }
            return (i, node);
        }
    }
}
