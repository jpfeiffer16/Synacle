using System;
using System.Collections.Generic;

namespace syncomp
{
    public class EqualPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Equal;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var left = nodes.Pop();
            var nextTerminator = GetNextTerminator(++i, tokens);
            var stopToken = Math.Min(nextTerminator, tokens.Count);
            var right = ParseTokens(tokens.GetRange(i, stopToken - i), ctx)[0];
            var equalToken = tokens[i - 1];
            i = stopToken;
            return (i, new Equal(left, right, equalToken.File, equalToken.Line, equalToken.Index) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
