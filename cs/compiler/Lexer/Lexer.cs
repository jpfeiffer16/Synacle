using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace compiler {
  public enum CharType {
    Char,
    Number,
    Symbol,
    Unknown
  }

  public class Lexer {
    
    private string code;

    public Lexer(string code) {
      this.code = code;
    }

    public List<SyntaxToken> Lex() {
      var tokens = new List<SyntaxToken>();
      var currentToken = String.Empty;
      var currentCharType = CharType.Unknown;

      for (var i = 0; i < this.code.Length; i++) {
        var ch = this.code[i];
        var chr = ch.ToString().Trim();
        var charType = CharType.Unknown;

        if (isNumberChar(chr)) {
          charType = CharType.Number;
        } else if (isWordChar(chr)) {
          charType = CharType.Char;
        } else {
          charType = CharType.Symbol;
        }

        if (currentCharType != charType || charType == CharType.Symbol || i == code.Length - 1) {
          if (currentToken.Length > 0) {
          tokens.Add(new SyntaxToken(currentToken));
          currentToken = String.Empty;
          }
        }

        currentCharType = charType;
        currentToken += chr;
      }

      if (currentToken.Length > 0) {
        tokens.Add(new SyntaxToken(currentToken));
      }

      tokens = AggriegateLikeTokens(tokens);
      return tokens;
    }

    private bool isNumberChar(string ch) {
      return int.TryParse(ch, out _);
    }

    private bool isWordChar(string ch) {
      return new Regex(@"\w").Match(ch).Success;
    }

    private List<SyntaxToken> AggriegateLikeTokens(List<SyntaxToken> tokens) {
      var multiCharTokens = Grammar.Tokens.Where(tkn => tkn.Token.Length > 1);

      for (var i = 0; i < tokens.Count; i++) {
        var token = tokens[i];

        foreach (var mToken in multiCharTokens) {
          // var to = i = mToken.Token.Length;
          if (i < tokens.Count && i + mToken.Token.Length < tokens.Count) {
            var aggrTokens = string.Join(
              string.Empty,
              tokens
                .GetRange(i, mToken.Token.Length)
                .Select(tkn => tkn.Token)
            );

            if (aggrTokens == mToken.Token) {
              tokens.Splice(
                i,
                mToken.Token.Length,
                new List<SyntaxToken>() { new SyntaxToken(aggrTokens) }
              );
            }
          }
        }
      }

      return tokens;
    }
  }
}