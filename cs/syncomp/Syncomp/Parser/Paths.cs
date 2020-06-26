using System.Collections.Generic;

namespace syncomp
{
    public static class Paths
    {
        public static readonly List<ParserPath> ParserPaths = new List<ParserPath>
        {
            new AdditionPath(),
            new AmpersandPath(),
            new AndPath(),
            new AsPath(),
            new AsteriskPath(),
            new BreakpointPath(),
            new DecrPath(),
            new DerefArrowPath(),
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
            new NotPath(),
            new OrPath(),
            new PipePath(),
            new ReturnPath(),
            new StringLiteralPath(),
            new SubtractionPath(),
            new TernaryPath(),
            new TildePath(),
            new VariableAssignmentPath(),
            new VariableDeclarationPath(),
            new WhilePath()
        };
    }
}
