namespace compiler
{
    public class Identifier : AstNode
    {
        public string Name { get; private set; }
        public Identifier(string name) : base("IDENTIFIER") {
            this.Name = name;
        }
    }
}