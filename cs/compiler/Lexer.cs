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

    //TODO: Once we have a token type return a list of those here.
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

      return tokens;
    }

    private bool isNumberChar(string ch) {
      return int.TryParse(ch, out _);
    }

    private bool isWordChar(string ch) {
      return new Regex(@"\w").Match(ch).Success;
    }
  }
}