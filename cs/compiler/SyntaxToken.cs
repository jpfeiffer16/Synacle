namespace compiler {
  public enum SyntaxTokenTypes {
    VariableDeclaration,
    VariableAssignment,

    Identifier,
    SemiColon
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
        case ";":
          this.Type = SyntaxTokenTypes.SemiColon;
          break;
        default:
          this.Type = SyntaxTokenTypes.Identifier;
          break;
      }
    }
  }
}