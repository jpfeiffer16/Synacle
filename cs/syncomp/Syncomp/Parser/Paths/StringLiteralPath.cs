using System.Collections.Generic;

namespace syncomp
{

    public class StringLiteralPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.StringLiteral;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            return (i, new StringLiteral(tokens[i].Token, tkn.File, tkn.Line, tkn.Index));
        }

    }
}
