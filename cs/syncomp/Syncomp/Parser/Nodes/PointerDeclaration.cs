namespace syncomp
{
    public class PointerDeclaration : VariableDeclaration
    {
        public PointerDeclaration(string identifier, LangType langType, string file, int line, int column)
            : base(identifier, langType, file, line, column)
        {}
    }
}
