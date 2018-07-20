using System.Collections.Generic;

namespace compiler
{
    public enum SyntaxTokenTypes {
      VariableDeclaration,
      VariableAssignment,
      Identifier,
      SemiColon,
      LeftParen,
      RightParen,
      Addition,
      Incr,
      Subtraction,
      Decr,
      Multiplication,
      Division,
      Mod,
      If,
      While,
      Equal,
      Not,
      And,
      Or,
      LeftCurly,
      RightCurly,
      GreaterThan,
      GreaterThanOrEqual,
      LessThan,
      LessThanOrEqual,
      FunctionDeclaration,
      Return,
      Comma,
      AddressOf,
      Deref,
      Quote,
      Breakpoint
  }

    public static class Grammar {
      public readonly static List<SyntaxToken> Tokens =
        new List<SyntaxToken>() {
          new SyntaxToken() {
            Token = "var",
            Type = SyntaxTokenTypes.VariableDeclaration
          },
          new SyntaxToken() {
            Token = "function",
            Type = SyntaxTokenTypes.FunctionDeclaration
          },
          new SyntaxToken() {
            Token = "=",
            Type = SyntaxTokenTypes.VariableAssignment
          },
          new SyntaxToken() {
            Token = "",
            Type = SyntaxTokenTypes.Identifier
          },
          new SyntaxToken() {
            Token = ";",
            Type = SyntaxTokenTypes.SemiColon
          },
          new SyntaxToken() {
            Token = "(",
            Type = SyntaxTokenTypes.LeftParen
          },
          new SyntaxToken() {
            Token = ")",
            Type = SyntaxTokenTypes.RightParen
          },
          new SyntaxToken() {
            Token = "==",
            Type = SyntaxTokenTypes.Equal
          },
          new SyntaxToken() {
            Token = "!",
            Type = SyntaxTokenTypes.Not
          },
          new SyntaxToken() {
            Token = "&&",
            Type = SyntaxTokenTypes.And
          },
          new SyntaxToken() {
            Token = "||",
            Type = SyntaxTokenTypes.Or
          },
          new SyntaxToken() {
            Token = ">",
            Type = SyntaxTokenTypes.GreaterThan
          },
          new SyntaxToken() {
            Token = ">=",
            Type = SyntaxTokenTypes.GreaterThanOrEqual
          },
          new SyntaxToken() {
            Token = "<",
            Type = SyntaxTokenTypes.LessThan
          },
          new SyntaxToken() {
            Token = "<=",
            Type = SyntaxTokenTypes.LessThanOrEqual
          },
          new SyntaxToken() {
            Token = "+",
            Type = SyntaxTokenTypes.Addition
          },
          new SyntaxToken() {
            Token = "++",
            Type = SyntaxTokenTypes.Incr
          },
          new SyntaxToken() {
            Token = "-",
            Type = SyntaxTokenTypes.Subtraction
          },
          new SyntaxToken() {
            Token = "--",
            Type = SyntaxTokenTypes.Decr
          },
          new SyntaxToken() {
            Token = "*",
            Type = SyntaxTokenTypes.Multiplication
          },
          new SyntaxToken() {
            Token = "/",
            Type = SyntaxTokenTypes.Division
          },
          new SyntaxToken() {
            Token = "%",
            Type = SyntaxTokenTypes.Mod
          },
          new SyntaxToken() {
            Token = "if",
            Type = SyntaxTokenTypes.If
          },
          new SyntaxToken() {
            Token = "while",
            Type = SyntaxTokenTypes.While
          },
          new SyntaxToken() {
            Token = "{",
            Type = SyntaxTokenTypes.LeftCurly
          },
          new SyntaxToken() {
            Token = "}",
            Type = SyntaxTokenTypes.RightCurly
          },
          new SyntaxToken() {
            Token = "return",
            Type = SyntaxTokenTypes.Return
          },
          new SyntaxToken() {
            Token = ",",
            Type = SyntaxTokenTypes.Comma
          },
          new SyntaxToken() {
            Token = "&",
            Type = SyntaxTokenTypes.AddressOf
          },
          new SyntaxToken() {
            Token = "~",
            Type = SyntaxTokenTypes.Deref
          },
          new SyntaxToken() {
            Token = "\"",
            Type = SyntaxTokenTypes.Quote
          },
          new SyntaxToken() {
            Token = "breakpoint",
            Type = SyntaxTokenTypes.Breakpoint
          }
        };
    } 
}