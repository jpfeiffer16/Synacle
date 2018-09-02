namespace compiler {
    public class VariableDeclaration: AstNode {
        public string Identifier { get; }
        public VariableDeclaration(string identifier) : base("VARIABLE_DECLARATION") {
            this.Identifier = identifier;
        }
    }
}