namespace compiler {
  public class SyntaxToken {
    public string Token { get; set; }
    public SyntaxTokenType Type { get; set; }
    public SyntaxToken() {}
    public SyntaxToken(string token) {
      this.Token = token;
      this.Type = Grammar
        .Tokens
        .Find(tkn => tkn.Token == token)?.Type ?? SyntaxTokenType.Identifier;
    }
  }
}