using System.Collections.Generic;

namespace syncomp
{
    public static class Paths
    {
        public static readonly List<ParserPath> ParserPaths = new List<ParserPath>
        {
            new AdditionPath(),
            new AddressOfPath(),
            new AndPath(),
            new BreakpointPath(),
            new DecrPath(),
            new DerefPath(),
            new DivisionPath(),
            new DotPath(),
            new EqualPath(),
            new ForPath(),
            new FunctionDeclarationPath(),
            new GreaterThanOrEqualPath(),
            new GreaterThanPath(),
            new IdentifierPath(),
            new IfPath(),
            new IncrPath(),
            new LangTypePath(),
            new LeftParenPath(),
            new LessThanOrEqualPath(),
            new LessThanPath(),
            new ModPath(),
            new MultiplicationPath(),
            new NotPath(),
            new OrPath(),
            new ReturnPath(),
            new StringLiteralPath(),
            new SubtractionPath(),
            new VariableAssignmentPath(),
            new VariableDeclarationPath(),
            new WhilePath()
        };
    }
}
