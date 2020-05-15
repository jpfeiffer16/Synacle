using System.Collections.Generic;

namespace syncomp
{
    public class VariableAssignmentPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.VariableAssignment;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var previousAstNode = nodes.Pop();
            var nextTerminator = GetNextTerminator(i, tokens);
            var tokensToParse = tokens.GetRange(i + 1, (nextTerminator - i) - 1);
            i = nextTerminator;
            var parsedTokens = ParseTokens(tokensToParse, ctx);
            var parsedParameter = parsedTokens[0];

            return (i, new VariableAssignment(previousAstNode, parsedParameter, tkn.File, tkn.Line, tkn.Column));
        }
    }
}
