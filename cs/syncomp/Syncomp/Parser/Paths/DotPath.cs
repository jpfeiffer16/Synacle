using System.Collections.Generic;

namespace syncomp
{
    public class DotPath : ParserPath
    {
        public override SyntaxTokenType Match
        {
            get => SyntaxTokenType.Dot;
        }

        public override (int, AstNode) Eval(
          int i, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            var left = nodes.Pop() as Identifier;
            // if (left is null) throw new ParseException(i, tokens, nodes, "Left node is not an identifier");
            // var type = ctx.LangTypes.Where(tp => tp.Name == left.NodeType.Name).FirstOrDefault();
            // if (type is null)
            // {
            //     throw new ParseException(i, tokens, nodes, $"Unknown type: {left.Name}");
            // }
            var right = ParseTokens(new List<SyntaxToken> { tokens[++i] }, ctx)[0] as Identifier;
            // if (right is null) throw new ParseException(i, tokens, nodes, "Right node is not an identifier");
            // var field = type.Body.Where(fld => fld.Identifier == right.Name).FirstOrDefault();
            // if (field is null) throw new ParseException(i, tokens, nodes, $"Unknown field: {right.Name}");
            var dotToken = tokens[i - 1];
            // return (i, new Dot(left, right, dotToken.File, dotToken.Line, dotToken.Index) { NodeType = field.NodeType });
            return (i, new Dot(left, right, dotToken.File, dotToken.Line, dotToken.Column));
        }
    }
}
