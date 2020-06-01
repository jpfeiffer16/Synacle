
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class TernaryPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.QuestionMark;
        }

        public override (int, AstNode) Eval(int index, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var questionMarkToken = tokens[index];
            ++index;
            var previousAstNode = nodes.Pop();
            var nextColon = GetNext(index, tokens, SyntaxTokenType.Colon);
            var left = ParseTokens(tokens.GetRange(index, nextColon - index), ctx).FirstOrDefault();
            var nextTerminator = GetNextTerminator(index, tokens);
            var right = ParseTokens(tokens.GetRange(nextColon + 1, nextTerminator - (nextColon + 1)), ctx).FirstOrDefault();
            index = nextTerminator;

            return (index, new Ternary(previousAstNode, left, right, questionMarkToken.File, questionMarkToken.Line, questionMarkToken.Column));
        }
    }
}
