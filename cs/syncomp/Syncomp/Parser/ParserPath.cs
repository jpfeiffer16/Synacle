using System;
using System.Linq;
using System.Collections.Generic;
using System.Reflection;

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
                foreach (var match in staticMatches)
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

        protected LangType GetLangType(List<SyntaxToken> tokens, ParserContext ctx)
        {
            var left = tokens.FirstOrDefault(tkn => tkn.Type == SyntaxTokenType.LessThan);
            // Type  is geneic
            if (!(left is null))
            {
                int leftIndex = tokens.IndexOf(left);
                var simpleTypeToken = tokens.Take(leftIndex).FirstOrDefault();
                if (simpleTypeToken is null) throw new ParseException(left.Index, tokens, null, "No type before <");
                var right = tokens.LastOrDefault(tkn => tkn.Type == SyntaxTokenType.GreaterThan);
                if (right is null) throw new ParseException(left.Index, tokens, null, "No matching angle bracket");
                var subTypeList = new List<List<SyntaxToken>>() { new List<SyntaxToken>() };
                foreach (var tkn in tokens.GetRange(leftIndex + 1, (tokens.IndexOf(right) - leftIndex) - 1))
                {
                    if (tkn.Type == SyntaxTokenType.Comma)
                    {
                        subTypeList.Add(new List<SyntaxToken>());
                    }
                    else
                    {
                        subTypeList.LastOrDefault().Add(tkn);
                    }
                }
                var simpleType = new LangType(
                    simpleTypeToken.Token,
                    null,
                    simpleTypeToken.File,
                    simpleTypeToken.Line,
                    simpleTypeToken.Index);
                simpleType.SubTypes = subTypeList.Select(t => GetLangType(t, ctx)).ToList();
                // simpleType.SubTypes = new List<LangType> { GetLangType(tokens.GetRange(leftIndex + 1, (tokens.IndexOf(right) - leftIndex) - 1)) };
                return simpleType;
            }
            // Type is not geneic
            var typeToken = tokens.FirstOrDefault();
            if (typeToken is null) throw new ParseException(0, null, null, "Unable to find type");
            // return new LangType(typeToken.Token, null, typeToken.File, typeToken.Line, typeToken.Index);
            LangType langType = ctx.LangTypes.Where(lt => lt.Name == typeToken.Token).FirstOrDefault();
            if (langType is null) throw new TypeNotFoundException(typeToken.Token);
            return langType;
        }
    }
}
