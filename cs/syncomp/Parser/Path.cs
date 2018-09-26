using System;
using System.Linq;
using System.Collections.Generic;

namespace syncomp
{
  public class ParserPath
  {
    public virtual SyntaxTokenType Match { get; }

    public virtual Func<int, List<SyntaxToken>, List<AstNode>, AstNode> Eval 
    { get; }

    public List<AstNode> ParseTokens(List<SyntaxToken> tokens)
    {
      var paths = AppDomain.CurrentDomain.GetAssemblies()
        .Where(asm => asm.FullName.Contains("syncomp"))
        .SelectMany(asm => asm.GetTypes())
        .Where(tp => tp != typeof(ParserPath))
        .Where(tp => typeof(ParserPath).IsAssignableFrom(tp))
        .Select(tp => (ParserPath)Activator.CreateInstance(tp));
      
      var nodes = new List<AstNode>();

      for (var i = 0; i < tokens.Count(); i++)
      {
        var matches = paths.Where(path => path.Match == tokens[i].Type);
        foreach (var match in matches)
        {
          match.Eval(i, tokens, nodes);
        }
      }

      return nodes;
    }

    protected int GetExpression(
      SyntaxTokenType opener,
      SyntaxTokenType closer,
      int index,
      List<SyntaxToken> tokens)
    {
      throw new NotImplementedException();
    }
  }
}