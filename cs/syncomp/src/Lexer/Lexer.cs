using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace syncomp
{
  public enum CharType
  {
    Char,
    Number,
    Symbol,
    Unknown
  }

  public class Lexer
  {
    
    private string code;

    public Lexer(string code)
    {
      this.code = code;
    }

    public (List<SyntaxToken>, List<string>) Lex()
    {
      var tokens = new List<SyntaxToken>();
      var currentToken = string.Empty;
      var currentCharType = CharType.Unknown;
      var keepWhitespace = false;

      var strippedCode =
        this
          .code
          .Split("\n")
          .Where(line => !line.Trim().StartsWith("//"));
        
      for (var li = 0; li < strippedCode.Count(); li++)
      {
        var lineCode = strippedCode.ElementAt(li);
        for (var i = 0; i < lineCode.Length; i++)
        {
          var ch = lineCode[i];
          var chr = ch.ToString();
          if (chr == "\"") keepWhitespace = !keepWhitespace;
          if (!keepWhitespace) chr = chr.Trim();
          var charType = CharType.Unknown;

          if (isNumberChar(chr))
          {
            charType = CharType.Number;
          }
          else if (isWordChar(chr))
          {
            charType = CharType.Char;
          }
          else
          {
            charType = CharType.Symbol;
          }

          if (currentCharType != charType ||
            charType == CharType.Symbol ||
            i == lineCode.Length - 1)
          {
            if (currentToken.Length > 0)
            {
              tokens.Add(
                new SyntaxToken(currentToken)
                {
                  Index = i - currentToken.Length,
                  Line = li 
                }
              );
              currentToken = String.Empty;
            }
          }

          currentCharType = charType;
          currentToken += chr;
        }
      }

      if (currentToken.Length > 0)
      {
        tokens.Add(
          new SyntaxToken(currentToken)
          {
            Line = strippedCode.Count(),
            Index = strippedCode.LastOrDefault().Count() - currentToken.Length
          }
        );
      }
      tokens = AggregateLikeTokens(tokens);
      return (tokens, strippedCode.ToList());
    }

    private bool isNumberChar(string ch)
    {
      return int.TryParse(ch, out _);
    }

    private bool isWordChar(string ch)
    {
      return new Regex(@"\w").Match(ch).Success;
    }

    private List<SyntaxToken> AggregateLikeTokens(List<SyntaxToken> tokens)
    {
      var multiCharTokens = Grammar.Tokens.Where(tkn => tkn.Token.Length > 1);

      for (var i = 0; i < tokens.Count; i++)
      {
        var token = tokens[i];

        foreach (var mToken in multiCharTokens)
        {
          if (i < tokens.Count && i + mToken.Token.Length < tokens.Count)
          {
            var aggrTokens = string.Join(
              string.Empty,
              tokens
                .GetRange(i, mToken.Token.Length)
                .Select(tkn => tkn.Token)
            );

            if (aggrTokens == mToken.Token)
            {
              tokens.Splice(
                i,
                mToken.Token.Length,
                new List<SyntaxToken>
                {
                  new SyntaxToken(aggrTokens) { Index = i, Line = token.Line }
                }
              );
            }
          }
        }
      }

      return tokens;
    }
  }
}
