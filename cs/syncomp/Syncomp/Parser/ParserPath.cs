using System;
using System.Linq;
using System.Collections.Generic;

namespace syncomp
{
    public class ParserPath
    {
        public virtual SyntaxTokenType Match { get; }

        public virtual (int, AstNode) Eval(
          int index, List<SyntaxToken> tokens, List<AstNode> nodes, ParserContext ctx)
        {
            throw new NotImplementedException("Must implement the Eval() method");
        }

        public List<AstNode> ParseTokens(List<SyntaxToken> tokens, ParserContext ctx)
        {
            var nodes = new List<AstNode>();
            for (var i = 0; i < tokens.Count(); i++)
            {
                var thisToken = tokens[i];
                var staticMatches = Paths.ParserPaths.Where(path => path.Match == tokens[i].Type).ToList();
                if (staticMatches.Count > 1) throw new ParseException(i, tokens, nodes, $"There are more than one matches for token {thisToken.Token}");
                var match = staticMatches.FirstOrDefault();
                if (!(match is null))
                {
                    try
                    {
                        var (index, node) = match.Eval(i, tokens, nodes, ctx);
                        i = index;
                        nodes.Add(node);
                    }
                    catch (Exception e)
                    {
                        if (e.GetType() == typeof(ParseException))
                        {
                            throw;
                        }
                        else
                        {
                            throw new ParseException(i, tokens, nodes);
                        }
                    }
                }
            }
            return nodes;
        }

        protected int GetExpression(
          SyntaxTokenType openerType,
          SyntaxTokenType closerType,
          int index,
          List<SyntaxToken> tokens)
        {
            var nestingLevel = 0;

            do
            {
                var token = tokens[index];
                if (token.Type == openerType) nestingLevel++;
                if (token.Type == closerType) nestingLevel--;
                index++;
            }
            while ((nestingLevel > 0));

            //Return one less as we will over-step by one
            return index - 1;
        }

        protected int GetNextTerminator(int index, List<SyntaxToken> tokens)
        {
            var openers = new List<SyntaxTokenType>
            {
                SyntaxTokenType.LeftCurly,
                SyntaxTokenType.LeftParen
            };
            var closers = new List<SyntaxTokenType>
            {
                SyntaxTokenType.RightCurly,
                SyntaxTokenType.RightParen
            };
            var nestingLevel = 0;
            while (
                index < tokens.Count
            )
            {
                if (openers.Contains(tokens[index].Type)) nestingLevel++;
                if (closers.Contains(tokens[index].Type)) nestingLevel--;
                if (
                    tokens[index].Type == SyntaxTokenType.SemiColon &&
                    nestingLevel == 0
                ) break;
                index++;
            }

            return index;
        }

        protected bool LineContains(int i, List<SyntaxToken> tokens, SyntaxTokenType tokenType)
        {
            while (++i < tokens.Count() && tokens[i].Type != SyntaxTokenType.SemiColon)
            {
                if (tokens[i].Type == tokenType) return true;
            }

            return false;
        }

        protected int GetNext(
            int index, List<SyntaxToken> tokens, SyntaxTokenType tokenType)
        {
            var currentTokenType = SyntaxTokenType.Unknown;
            do
            {
                currentTokenType = tokens[index++].Type;
            }
            while (currentTokenType != tokenType);
            return --index;
        }

        protected int GetNextNonWhitespace(int index, List<SyntaxToken> tokens)
        {
            while (
                tokens[index].Type == SyntaxTokenType.NewLine
                || tokens[index].Type == SyntaxTokenType.Space)
            {
                index++;
            }

            return index;
        }

        protected bool IsExpressionNode(AstNode node)
        {
            return node is Identifier || node is IntegerLiteral || node is StringLiteral;
        }
    }
}
