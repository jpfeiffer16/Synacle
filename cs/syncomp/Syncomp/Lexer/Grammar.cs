using System.Collections.Generic;

namespace syncomp
{
    public enum SyntaxTokenType
    {
        Comment,
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
        For,
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
        Breakpoint,
        LangType,
        Dot,
        EOF,
        Unknown,
        NewLine,
        Tab,
        Space,
        Integer,
        StringLiteral
    }

    public static class Grammar
    {
        public readonly static List<SyntaxToken> Tokens =
          new List<SyntaxToken>
          {
              new SyntaxToken
              {
                Token = "type",
                Type = SyntaxTokenType.LangType
              },
              new SyntaxToken
              {
                Token = "var",
                Type = SyntaxTokenType.VariableDeclaration
              },
              new SyntaxToken
              {
                Token = "function",
                Type = SyntaxTokenType.FunctionDeclaration
              },
              new SyntaxToken
              {
                Token = "=",
                Type = SyntaxTokenType.VariableAssignment
              },
              new SyntaxToken
              {
                Token = "",
                Type = SyntaxTokenType.Identifier
              },
              new SyntaxToken
              {
                Token = ";",
                Type = SyntaxTokenType.SemiColon
              },
              new SyntaxToken
              {
                Token = "(",
                Type = SyntaxTokenType.LeftParen
              },
              new SyntaxToken
              {
                Token = ")",
                Type = SyntaxTokenType.RightParen
              },
              new SyntaxToken
              {
                Token = "==",
                Type = SyntaxTokenType.Equal
              },
              new SyntaxToken
              {
                Token = "!",
                Type = SyntaxTokenType.Not
              },
              new SyntaxToken
              {
                Token = "&&",
                Type = SyntaxTokenType.And
              },
              new SyntaxToken
              {
                Token = "||",
                Type = SyntaxTokenType.Or
              },
              new SyntaxToken
              {
                Token = ">",
                Type = SyntaxTokenType.GreaterThan
              },
              new SyntaxToken
              {
                Token = ">=",
                Type = SyntaxTokenType.GreaterThanOrEqual
              },
              new SyntaxToken
              {
                Token = "<",
                Type = SyntaxTokenType.LessThan
              },
              new SyntaxToken
              {
                Token = "<=",
                Type = SyntaxTokenType.LessThanOrEqual
              },
              new SyntaxToken
              {
                Token = "+",
                Type = SyntaxTokenType.Addition
              },
              new SyntaxToken
              {
                Token = "++",
                Type = SyntaxTokenType.Incr
              },
              new SyntaxToken
              {
                Token = "-",
                Type = SyntaxTokenType.Subtraction
              },
              new SyntaxToken
              {
                Token = "--",
                Type = SyntaxTokenType.Decr
              },
              new SyntaxToken
              {
                Token = "*",
                Type = SyntaxTokenType.Multiplication
              },
              new SyntaxToken
              {
                Token = "/",
                Type = SyntaxTokenType.Division
              },
              new SyntaxToken
              {
                Token = "%",
                Type = SyntaxTokenType.Mod
              },
              new SyntaxToken
              {
                Token = "if",
                Type = SyntaxTokenType.If
              },
              new SyntaxToken
              {
                Token = "while",
                Type = SyntaxTokenType.While
              },
              new SyntaxToken
              {
                Token = "for",
                Type = SyntaxTokenType.For
              },
              new SyntaxToken
              {
                Token = "{",
                Type = SyntaxTokenType.LeftCurly
              },
              new SyntaxToken
              {
                Token = "}",
                Type = SyntaxTokenType.RightCurly
              },
              new SyntaxToken
              {
                Token = "return",
                Type = SyntaxTokenType.Return
              },
              new SyntaxToken
              {
                Token = ",",
                Type = SyntaxTokenType.Comma
              },
              new SyntaxToken
              {
                Token = "&",
                Type = SyntaxTokenType.AddressOf
              },
              new SyntaxToken
              {
                Token = "~",
                Type = SyntaxTokenType.Deref
              },
              new SyntaxToken
              {
                Token = "breakpoint",
                Type = SyntaxTokenType.Breakpoint
              },
              new SyntaxToken
              {
                  Token = ".",
                  Type = SyntaxTokenType.Dot
              }
        };
    }
}
