using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class CheckerVariableStack
    {

        private Stack<(List<CheckerFunction> functions, List<CheckerVariable> variables)> Stack
            = new Stack<(List<CheckerFunction>, List<CheckerVariable>)>();

        public CheckerVariableStack()
        {
            this.Push();
            // Typing for intrinsic functions
            this.Stack.LastOrDefault().functions.Add(new CheckerFunction
            {
                Node = new FunctionDeclaration(new List<AstNode>
                {
                    new VariableDeclaration("char", ParserContext.NativeTypes.LangInt, null, 0, 0)
                }, null, "out", null, 0, 0)
            });
            this.Stack.LastOrDefault().functions.Add(new CheckerFunction
            {
                Node = new FunctionDeclaration(new List<AstNode>
                {
                    new VariableDeclaration("dest", ParserContext.NativeTypes.LangInt, null, 0, 0),
                    new VariableDeclaration("source", ParserContext.NativeTypes.LangInt, null, 0, 0)
                }, null, "wmem", null, 0, 0)
            });
            this.Stack.LastOrDefault().functions.Add(new CheckerFunction
            {
                Node = new FunctionDeclaration(new List<AstNode>
                {
                    new VariableDeclaration("dest", ParserContext.NativeTypes.LangInt, null, 0, 0),
                }, null, "rmem", null, 0, 0) { NodeType = ParserContext.NativeTypes.LangInt }
            });
            this.Stack.LastOrDefault().functions.Add(new CheckerFunction
            {
                Node = new FunctionDeclaration(new List<AstNode>
                {
                    new VariableDeclaration("value", ParserContext.NativeTypes.LangInt, null, 0, 0),
                }, null, "push", null, 0, 0)
            });
            this.Stack.LastOrDefault().functions.Add(new CheckerFunction
            {
                Node = new FunctionDeclaration(null, null, "pop", null, 0, 0) { NodeType = ParserContext.NativeTypes.LangInt }
            });
            this.Stack.LastOrDefault().functions.Add(new CheckerFunction
            {
                Node = new FunctionDeclaration(
                    Enumerable.Empty<AstNode>().ToList(),
                    null,
                    "pop",
                    null,
                    0,
                    0) { NodeType = ParserContext.NativeTypes.LangInt }
            });
            this.Stack.LastOrDefault().functions.Add(new CheckerFunction
            {
                Node = new FunctionDeclaration(
                    Enumerable.Empty<AstNode>().ToList(),
                    null,
                    "in",
                    null,
                    0,
                    0) { NodeType = ParserContext.NativeTypes.LangInt }
            });
        }

        public void Push()
        {
            this.Stack.Push((new List<CheckerFunction>(), new List<CheckerVariable>()));
        }

        public void Pop() => this.Stack.Pop();

        public void AddVariable(CheckerVariable variable)
        {
            this.Stack.First().variables.Add(variable);
        }

        public CheckerVariable GetVariable(string name)
        {
            foreach (var frame in Stack)
            {
                var variable = frame.variables.Find(fm => fm.Node.Identifier == name);
                if (variable != null)
                {
                    return variable;
                }
            }
            return null;
        }

        public void AddFunction(CheckerFunction function)
        {
            this.Stack.First().functions.Add(function);
        }

        public CheckerFunction GetFunction(string name)
        {
            foreach (var frame in Stack)
            {
                var function = frame.functions.Find(fm => fm.Node.Name == name);
                if (function != null)
                    return function;
            }
            return null;
        }
    }
}
