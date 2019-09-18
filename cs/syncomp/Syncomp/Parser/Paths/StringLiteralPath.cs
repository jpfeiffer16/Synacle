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
            // ++i;
            // var originalI = i;
            // while (tokens[i].Type != SyntaxTokenType.Quote)
            // {
            //     i++;
            // }
            // return (i, new StringLiteral(
            //   string.Join(string.Empty, tokens.GetRange(originalI, i - originalI).Select(tkn => tkn.Token))
            // ));
            return (i, new StringLiteral(tokens[i].Token));
        }

    }
}
