using System;
using System.Collections.Generic;

namespace syncomp
{
    public class Checker
    {
        #region "Properties and Fields"
        private readonly List<AstNode> ast;
        #endregion

        #region "ctor"
        public Checker(List<AstNode> ast)
        {
            this.ast = ast;
        }
        #endregion

        #region "Boilerplate"
        public List<Diagnostic> Check()
        {
            // NOTE, TODO: Becase we are using a List<AstNode> at the
            // top level, we have to individually call checks on the top
            // level nodes and collect the results.
            // At some point we should probably go to a root-node ast
            // instead.
            var results = new List<Diagnostic>();
            var ctx = new CheckerContext();
            foreach (var node in ast)
            {
                results.AddRange(Check(node, ctx));
            }

            return results;
        }
        #endregion

        #region "Implementaion"
        private List<Diagnostic> Check(
            AstNode node, CheckerContext ctx)
        {
            var diagnostics = new List<Diagnostic>();
            if (node is FunctionCall f)
            {
                var function = ctx.Variables.GetFunction(f.Name);
                if (function is null
                    // Handle intrinsics
                    && f.Name != "out"
                    && f.Name != "in"
                    && f.Name != "exit"
                    && f.Name != "push"
                    && f.Name != "pop"
                    && f.Name != "wmem")
                {
                    diagnostics.Add(new Diagnostic
                    {
                        Code = DiagnosticCode.UnknownFunction,
                        Message = $"Invalid function: {f.Name}"
                    });
                }
                else if (function != null)
                {
                    if (f.Parameters.Count != function.Node.Parameters.Count)
                    {
                        //TODO: Look up the called function and make sure parameter
                        // count is correct
                        diagnostics.Add(new Diagnostic
                        {
                            Code = DiagnosticCode.InvalidParameters,
                            Message = $"Invalid parameters for function '{f.Name}'"
                        });

                    }
                }
            }
            if (node is FunctionDeclaration fd)
            {
                ctx.Variables.AddFunction(new CheckerFunction
                {
                    Node = fd
                });

                ctx.Variables.Push();
                foreach (var parameter in fd.Parameters)
                {
                    ctx.Variables.AddVariable(
                        new CheckerVariable
                        {
                            Node = parameter as VariableDeclaration
                        });
                }
                foreach (var expressionNode in fd.Expression)
                {
                    diagnostics.AddRange(Check(expressionNode, ctx));
                }
                ctx.Variables.Pop();
            }

            if (node is VariableDeclaration vd)
            {
                ctx.Variables.AddVariable(new CheckerVariable
                {
                    Node = vd
                });
            }
            return diagnostics;
        }
        #endregion
    }
}
