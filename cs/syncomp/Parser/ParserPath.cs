using System;
using System.Linq;
using System.Collections.Generic;

namespace syncomp
{
  public class ParserPath
  {
      //Load all ParserPaths
    private static List<ParserPath> Paths = AppDomain
        .CurrentDomain.GetAssemblies()
        .Where(asm => asm.FullName.Contains("syncomp"))
        .SelectMany(asm => asm.GetTypes())
        .Where(tp => tp != typeof(ParserPath))
        .Where(tp => typeof(ParserPath).IsAssignableFrom(tp))
        .Select(tp => (ParserPath)Activator.CreateInstance(tp))
        .ToList();
    public virtual SyntaxTokenType Match { get; }

    public virtual Func<int, List<SyntaxToken>, List<AstNode>, Tuple<int, AstNode>> Eval 
    { get; }

    public List<AstNode> ParseTokens(List<SyntaxToken> tokens)
    { 
      var nodes = new List<AstNode>();

      for (var i = 0; i < tokens.Count(); i++)
      {
        var matches = Paths.Where(path => path.Match == tokens[i].Type).ToList();
        foreach (var match in matches)
        {
          var (index, node) = match.Eval(i, tokens, nodes);
          i = index;
          nodes.Add(node);
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
      var indentLevel = 0;

      do {
        var token = tokens[index];
        if (token.Type == openerType) indentLevel++;
        if (token.Type == closerType) indentLevel--;
        index++;
      } while ((indentLevel > 0));

      //Return one less as we will over-step by one
      return index - 1;
    }

    protected int GetNextTerminator(int index, List<SyntaxToken> tokens) {
      var openers = new List<SyntaxTokenType> {
        SyntaxTokenType.LeftCurly,
        SyntaxTokenType.LeftParen
      };
      var closers = new List<SyntaxTokenType> {
        SyntaxTokenType.RightCurly,
        SyntaxTokenType.RightParen
      };
      var nestingLevel = 0;
      while (
        index < tokens.Count
      ) {
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
  }
}