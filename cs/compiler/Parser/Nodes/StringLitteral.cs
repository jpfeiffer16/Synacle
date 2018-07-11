namespace compiler
{
    public class StringLitteral : AstNode
    {
        public StringLitteral(string value) : base("STRING_LITTERAL") {
            this.Value = value;
        }

        public string Value { get; }
    }
}