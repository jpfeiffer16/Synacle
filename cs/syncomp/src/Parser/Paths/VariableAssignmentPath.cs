using System;
using System.Collections.Generic;

namespace syncomp
{
  public class VariableAssignmentPath : ParserPath
  {
    public override SyntaxTokenType Match
    {
      get => SyntaxTokenType.VariableAssignment;
    }

    public override Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval
    {
      get => (int i, List<SyntaxToken> tokens, List<AstNode> nodes) => {
        var previousAstNode = nodes.Pop();
        var nextTerminator = GetNextTerminator(i, tokens);
        var tokensToParse = tokens.GetRange(i + 1, nextTerminator - i);
        i = nextTerminator;
        var parsedParameter = ParseTokens(tokensToParse)[0];
        return new Tuple<int, AstNode>(i, new VariableAssignment(previousAstNode, parsedParameter));
      };
    }
  }
}