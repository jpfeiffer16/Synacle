using System.Collections.Generic;

namespace syncomp
{
    public class AdditionPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Addition;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var additionToken = tokens[i];
            var left = nodes.Pop();
            var nextTerminator = this.GetNextTerminator(++i, tokens);
            var right = ParseTokens(tokens.GetRange(i, nextTerminator - i), ctx);
            i = nextTerminator;
            return (i, new Addition(
                left,
                right[0],
                additionToken.File,
                additionToken.Line,
                additionToken.Column) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
