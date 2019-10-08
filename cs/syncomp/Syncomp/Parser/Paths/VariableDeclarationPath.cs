using System.Collections.Generic;

namespace syncomp
{
    public class VariableDeclarationPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.VariableDeclaration;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var nextToken = tokens[++i];

            return (
                    i, new VariableDeclaration(
                        nextToken.Token, ParserContext.NativeTypes.LangInt, tkn.File, tkn.Line, tkn.Index));
        }
    }
}
