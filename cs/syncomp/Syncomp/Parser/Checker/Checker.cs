using System;
using System.Collections.Generic;
using System.Linq;

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
            #region "VariableAssignment"
            if (node is VariableAssignment va)
            {
                if (va.Identifier is VariableDeclaration def)
                {
                    ctx.Variables.AddVariable(new CheckerVariable
                    {
                        Node = def
                    });
                }
                // TODO: Hack to deal with lack of actual parser context in the parser.
                // Hence, need to look up the function in the checker context.
                // Please help me...
                diagnostics.AddRange(Check(va.Identifier, ctx));
                var identifierType = va.Identifier.NodeType;
                var parameterType = va.Parameter.NodeType;
                var length = 1;
                if (va.Parameter is FunctionCall fc)
                {
                    var function = ctx.Variables.GetFunction(fc.Name);
                    if (function is null)
                    {
                        diagnostics.Add(
                            new Diagnostic(
                                fc.File,
                                fc.Line,
                                fc.Column,
                                $"Unknown function: {fc.Name}",
                                DiagnosticCode.UnknownFunction));
                    }
                    else
                    {
                        parameterType = function.Node.NodeType;
                    }
                }
                if (va.Parameter is Identifier parameter)
                {
                    var variable = ctx.Variables.GetVariable(parameter.Name);
                    parameterType = variable.Node.NodeType;
                }
                if (va.Identifier is Identifier identifier)
                {
                    length = identifier.Name.Length;
                    var variable = ctx.Variables.GetVariable(identifier.Name);
                    if (variable is null) {
                        diagnostics.Add(new Diagnostic(
                            identifier.File,
                            identifier.Line,
                            identifier.Column,
                            $"Unknown variable '{identifier.Name}'",
                            DiagnosticCode.UnknownVariable));
                    }
                    else
                    {
                        identifierType = variable.Node.NodeType;
                    }
                }
                if (va.Identifier is VariableDeclaration declaration)
                {
                    length = declaration.Identifier.Length;
                }

                if (identifierType != parameterType)
                    diagnostics.Add(new Diagnostic(
                        va.Identifier.File,
                        va.Identifier.Line,
                        va.Identifier.Column,
                        length: length,
                        $"Unable to convert type '{parameterType?.Name}' to  '{identifierType?.Name}'",
                        DiagnosticCode.InvalidTypes));
            }
            #endregion
            #region "FunctionCall"
            if (node is FunctionCall f)
            {
                var function = ctx.Variables.GetFunction(f.Name);
                if (function is null
                    // Handle intrinsics
                    // && f.Name != "out"
                    // && f.Name != "in"
                    // && f.Name != "exit"
                    // && f.Name != "push"
                    // && f.Name != "pop"
                    // && f.Name != "wmem"
                    )
                {
                    diagnostics.Add(new Diagnostic(
                        node.File,
                        node.Line,
                        node.Column,
                        $"Invalid function: {f.Name}",
                        DiagnosticCode.UnknownFunction));
                }
                else if (function != null)
                {
                    if (f.Parameters.Count != function.Node.Parameters.Count)
                    {
                        diagnostics.Add(new Diagnostic(
                            node.File,
                            node.Line,
                            node.Column,
                            $"Invalid parameters for function '{f.Name}'",
                            DiagnosticCode.InvalidParameters));

                    }
                    foreach (var parameter in f.Parameters)
                    {
                        diagnostics.AddRange(Check(parameter, ctx));
                    }
                    var minCount = Math.Min(f.Parameters.Count, function.Node.Parameters.Count);
                    for (var i = 0; i < minCount; i++)
                    {
                        var callParam = f.Parameters[i];
                        var callParamType = callParam.NodeType;
                        if (callParam is Identifier callParamTp)
                        {
                            var variable = ctx.Variables.GetVariable(callParamTp.Name);
                            callParamType = variable.Node.NodeType;
                        }
                        // if (callParam is FunctionCall callParamFunc)
                        // {
                        //     var funcParam = ctx.Variables.GetFunction(callParamFunc.Name);
                        //     if (funcParam is null)
                        //     {
                        //     diagnostics.Add(
                        //         new Diagnostic(
                        //             callParamFunc.File,
                        //             callParamFunc.Line,
                        //             callParamFunc.Column,
                        //             $"Unknown function: {callParamFunc.Name}",
                        //             DiagnosticCode.UnknownFunction));
                        //     }
                        //     callParamType = funcParam.Node.NodeType;
                        // }
                        var declParam = function.Node.Parameters[i];
                        if (callParamType != declParam.NodeType)
                        {
                            diagnostics.Add(new Diagnostic(
                                callParam.File,
                                callParam.Line,
                                callParam.Column,
                                $"Unable to convert type '{callParamType?.Name}' to  '{declParam.NodeType?.Name}'",
                                DiagnosticCode.InvalidTypes));
                        }
                    }
                }
            }
            #endregion
            #region "FunctionDeclaration"
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
                var controlFlowChecker = new ReturnControlFlowChecker(fd);
                if (!controlFlowChecker.Check())
                {
                    diagnostics.Add(new Diagnostic(
                        fd.File,
                        fd.Line,
                        fd.Column,
                        length: fd.Name.Length,
                        $"Not all code paths return value of type {fd.NodeType.Name}",
                        DiagnosticCode.ControlFlowError
                    ));
                }
                ctx.Variables.Pop();
            }
            #endregion
            #region "VariableDeclaration"
            if (node is VariableDeclaration vd)
            {
                ctx.Variables.AddVariable(new CheckerVariable
                {
                    Node = vd
                });
            }
            #endregion
            #region "Identifier"
            if (node is Identifier idNode)
            {
                var variable = ctx.Variables.GetVariable(idNode.Name);
                if (variable is null)
                {
                    diagnostics.Add(new Diagnostic(
                        idNode.File,
                        idNode.Line,
                        idNode.Column,
                        length: idNode.Name.Length,
                        $"Unknown variable '{idNode.Name}'",
                        DiagnosticCode.UnknownVariable));
                }
            }
            #endregion
            #region "For"
            // TODO: Type check args
            if (node is For forNode)
            {
                foreach (var exNode in forNode.Init)
                {
                    diagnostics.AddRange(Check(exNode, ctx));
                }
                foreach (var exNode in forNode.Condition)
                {
                    diagnostics.AddRange(Check(exNode, ctx));
                }
                foreach (var exNode in forNode.Incrementor)
                {
                    diagnostics.AddRange(Check(exNode, ctx));
                }
                foreach (var exNode in forNode.Expression)
                {
                    diagnostics.AddRange(Check(exNode, ctx));
                }
            }
            #endregion
            #region "If"
            // TODO: Type check args
            if (node is If ifNode)
            {
                foreach (var conditionnode in ifNode.Condition)
                {
                    diagnostics.AddRange(Check(conditionnode, ctx));
                }
                foreach (var exNode in ifNode.Expression)
                {
                    diagnostics.AddRange(Check(exNode, ctx));
                }
            }
            #endregion
            #region "While"
            if (node is While whileNode)
            {
                foreach (var exNode in whileNode.Expression)
                {
                    diagnostics.AddRange(Check(exNode, ctx));
                }
            }
            #endregion
            #region "Dot"
            if (node is Dot dot)
            {
                // Need to set up the types on the Dot
                var variableName =  dot.Left as Identifier;
                if (variableName is null)
                {
                    diagnostics.Add(new Diagnostic(
                        dot.Left.File,
                        dot.Left.Line,
                        dot.Left.Column,
                        "Unknown variable",
                        DiagnosticCode.UnknownVariable));
                }
                var variable = ctx.Variables.GetVariable(variableName.Name);
                // var type = ctx.Types.Where(tp => tp.Name == variableName.Name).FirstOrDefault();
                var type = variable.Node.NodeType;
                if (type is null)
                {
                    diagnostics.Add(new Diagnostic(
                        dot.Left.File,
                        dot.Left.Line,
                        dot.Left.Column,
                        $"Unknown type: {variableName.Name}",
                        DiagnosticCode.UnknownType));
                }
                var fieldName = dot.Right as Identifier;
                // if (right is null) throw new ParseException(i, tokens, nodes, "Right node is not an identifier");
                var field = type.Body.Where(fld => fld.Identifier == fieldName.Name).FirstOrDefault();
                if (field is null)
                {
                    diagnostics.Add(new Diagnostic(
                        dot.Right.File,
                        dot.Right.Line,
                        dot.Right.Column,
                        $"Unknown field: {fieldName.Name}",
                        DiagnosticCode.UnknownField));
                }
                dot.NodeType = field.NodeType;
            }
            #endregion
            #region "DerefArrow"
            if (node is DerefArrow derefArrowNode)
            {

                // Need to set up the types on the DerefArrow
                var variableName =  derefArrowNode.Left as Identifier;
                if (variableName is null)
                {
                    diagnostics.Add(new Diagnostic(
                        derefArrowNode.Left.File,
                        derefArrowNode.Left.Line,
                        derefArrowNode.Left.Column,
                        "Unknown variable",
                        DiagnosticCode.UnknownVariable));
                    return diagnostics;
                }
                var variable = ctx.Variables.GetVariable(variableName.Name);
                if (variable.Node.NodeType != ParserContext.NativeTypes.Pointer)
                {
                    diagnostics.Add(new Diagnostic(
                        derefArrowNode.File,
                        derefArrowNode.Line,
                        derefArrowNode.Column,
                        2,
                        "Type must be a ptr to use a Dereferencing Arrow",
                        DiagnosticCode.InvalidTypes
                    ));
                    return diagnostics;
                }
                // var type = ctx.Types.Where(tp => tp.Name == variableName.Name).FirstOrDefault();
                var type = variable.Node.SubType;
                if (type is null)
                {
                    diagnostics.Add(new Diagnostic(
                        derefArrowNode.Left.File,
                        derefArrowNode.Left.Line,
                        derefArrowNode.Left.Column,
                        $"Unknown type: {variableName.Name}",
                        DiagnosticCode.UnknownType));
                }
                var fieldName = derefArrowNode.Right as Identifier;
                var field = type.Body.Where(fld => fld.Identifier == fieldName.Name).FirstOrDefault();
                if (field is null)
                {
                    diagnostics.Add(new Diagnostic(
                        derefArrowNode.Right.File,
                        derefArrowNode.Right.Line,
                        derefArrowNode.Right.Column,
                        $"Unknown field: {fieldName.Name}",
                        DiagnosticCode.UnknownField));
                }
                derefArrowNode.NodeType = field.NodeType;
            }
            #endregion
            #region "ParenGroup"
            if (node is ParenGroup pGroup)
            {
                foreach (var childNode in pGroup.Nodes)
                {
                    Check(childNode, ctx);
                }
                if (pGroup.Nodes.Count > 0)
                {
                    pGroup.NodeType = pGroup.Nodes.LastOrDefault().NodeType;
                }
            }
            #endregion
            return diagnostics;
        }
        #endregion
    }
}
