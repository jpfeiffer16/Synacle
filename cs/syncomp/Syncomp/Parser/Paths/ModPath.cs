using System.Collections.Generic;

namespace syncomp
{
    public class ModPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Mod;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var tkn = tokens[i];
            var left = nodes.Pop();
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx);
            return (i, new Mod(left, right[0], tkn.File, tkn.Line, tkn.Column) { NodeType = ParserContext.NativeTypes.LangInt });
        }
    }
}
