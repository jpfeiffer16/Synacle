using System.Collections.Generic;

namespace syncomp
{
    public static class Emitters
    {
        public static List<IEmitter> EmitterPaths = new List<IEmitter>
        {
            new AdditionEmitter(),
            new AddressOfEmitter(),
            new AndEmitter(),
            new BreakpointEmitter(),
            new DecrEmitter(),
            new DerefEmitter(),
            new DivisionEmitter(),
            new EqualEmitter(),
            new ForEmitter(),
            new FunctionCallEmitter(),
            new FunctionDeclarationEmitter(),
            new GreaterThanEmitter(),
            new GreaterThanOrEqualEmitter(),
            new IdentifierEmitter(),
            new IfEmitter(),
            new IncrEmitter(),
            new IntegerLiteralEmitter(),
            // new LangTypeEmitter(),
            new LessThanEmitter(),
            new LessThanOrEqualEmitter(),
            new ModEmitter(),
            new MultiplicationEmitter(),
            new NotEmitter(),
            new OrEmitter(),
            new ParenGroupEmitter(),
            new ReturnEmitter(),
            new StringLiteralEmitter(),
            new SubtractionEmitter(),
            new VariableAssignmentEmitter(),
            new VariableDeclarationEmitter(),
            new WhileEmitter(),
            new DotEmitter(),
            new AsEmitter(),
            new DerefArrowEmitter()
        };
    }
}
