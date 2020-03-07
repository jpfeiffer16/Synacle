namespace syncomp
{
    public class Identifier : AstNode
    {
        public override int Length => this.Name.Length;
        public string Name { get; private set; }
        public Identifier(string name, string file, int line, int column)
            : base("IDENTIFIER", file, line, column)
        {
            this.Name = name;
        }
    }
}
