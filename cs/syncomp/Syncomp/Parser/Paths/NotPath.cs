using System.Collections.Generic;

namespace syncomp
{
    public class NotPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Not;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var nextTerminator = this.GetNextTerminator(i, tokens);
            var next = ParseTokens(tokens.GetRange(++i, nextTerminator - i), ctx)[0];
            i = nextTerminator - 1;
            return (i, new Not(next, tkn.File, tkn.Line, tkn.Column));
        }
    }
}
