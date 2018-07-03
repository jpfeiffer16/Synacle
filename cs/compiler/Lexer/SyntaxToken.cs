namespace compiler {
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
  public class SyntaxToken {
    public string Token { get; private set; }
    public SyntaxTokenTypes Type { get; private set; }
    public SyntaxToken(string token) {
      this.Token = token;
      switch(token) {
        case "var":
          this.Type = SyntaxTokenTypes.VariableDeclaration;
          break;
        case "=":
          this.Type = SyntaxTokenTypes.VariableAssignment;
          break;
        case "+":
          this.Type = SyntaxTokenTypes.Addition;
          break;
        case "-":
          this.Type = SyntaxTokenTypes.Subtraction;
          break;
        case ";":
          this.Type = SyntaxTokenTypes.SemiColon;
          break;
        case "(":
          this.Type = SyntaxTokenTypes.LeftParen;
          break;
        case ")":
          this.Type = SyntaxTokenTypes.RightParen;
          break;
        default:
          this.Type = SyntaxTokenTypes.Identifier;
          break;
      }
    }
  }
}