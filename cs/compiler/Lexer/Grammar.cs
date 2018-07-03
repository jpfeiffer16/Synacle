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
      Subtraction
    }

    public static class Grammar {
      public readonly static List<SyntaxToken> Tokens = 
        new List<SyntaxToken>() {
          new SyntaxToken() {
            
          }
        };
    } 
}