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
      Subtraction,
      While,
      Equal,
      LeftCurly,
      RightCurly,
      GreaterThan,
      LessThan,
      FunctionDeclaration,
      Return,
      Comma
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
            Token = ">",
            Type = SyntaxTokenTypes.GreaterThan
          },
          new SyntaxToken() {
            Token = "<",
            Type = SyntaxTokenTypes.LessThan
          },
          new SyntaxToken() {
            Token = "+",
            Type = SyntaxTokenTypes.Addition
          },
          new SyntaxToken() {
            Token = "-",
            Type = SyntaxTokenTypes.Subtraction
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
          }
        };
    } 
}