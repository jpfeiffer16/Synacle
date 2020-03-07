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
                diagnostics.AddRange(Check(va.Parameter, ctx));
                diagnostics.AddRange(Check(va.Identifier, ctx));

                var identifierType = va.Identifier.NodeType;
                var parameterType = va.Parameter.NodeType;

                if (!identifierType.Equals(parameterType))
                    diagnostics.Add(new Diagnostic(
                        va.File,
                        va.Line,
                        va.Column,
                        $"Unable to convert type '{parameterType?.GetName()}' to '{identifierType?.GetName()}'",
                        DiagnosticCode.InvalidTypes));
            }
            #endregion
            #region "FunctionCall"
            if (node is FunctionCall f)
            {
                var function = ctx.Variables.GetFunction(f.Name)?.Node as AstNode;
                if (function is null) function = ctx.Variables.GetVariable(f.Name)?.Node;
                if (function is null)
                {
                    diagnostics.Add(new Diagnostic(
                        node.File,
                        node.Line,
                        node.Column,
                        length: f.Name.Length,
                        $"Invalid function: {f.Name}",
                        DiagnosticCode.UnknownFunction));
                }
                else if (function != null)
                {
                    if (f.Parameters.Count != function.NodeType.SubTypes?.Count - 1)
                    {
                        diagnostics.Add(new Diagnostic(
                            node.File,
                            node.Line,
                            node.Column,
                            length: f.Name.Length,
                            $"Invalid parameters for function '{f.Name}'",
                            DiagnosticCode.InvalidParameters));

                    }
                    foreach (var parameter in f.Parameters)
                    {
                        diagnostics.AddRange(Check(parameter, ctx));
                    }
                    var minCount = Math.Min(f.Parameters.Count, function.NodeType.SubTypes.Count - 1);
                    for (var i = 0; i < minCount; i++)
                    {
                        var callParam = f.Parameters[i];
                        var callParamType = callParam.NodeType;
                        var declParamType = function.NodeType.SubTypes[i];
                        if (!callParamType.Equals(declParamType))
                        {
                            diagnostics.Add(new Diagnostic(
                                callParam.File,
                                callParam.Line,
                                callParam.Column,
                                length: callParam.Length,
                                $"Unable to convert type '{callParamType?.GetName()}' to  '{declParamType?.GetName()}'",
                                DiagnosticCode.InvalidTypes));
                        }
                    }
                    f.NodeType = function.NodeType.SubTypes.LastOrDefault();
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
                        length: 8, // The word 'function' is 8 chars long
                        $"Not all code paths return value of type {fd.NodeType.SubTypes.LastOrDefault()?.GetName()}",
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
                    return diagnostics;
                }
                idNode.NodeType = variable.Node.NodeType;
            }
            #endregion
            #region "For"
            // TODO: Check for various parts
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
                var variableName = dot.Left as Identifier;
                if (variableName is null)
                {
                    diagnostics.Add(new Diagnostic(
                        dot.Left.File,
                        dot.Left.Line,
                        dot.Left.Column,
                        "Unknown variable",
                        DiagnosticCode.UnknownVariable));
                    return diagnostics;
                }
                var variable = ctx.Variables.GetVariable(variableName.Name);
                if (variable is null)
                {
                    diagnostics.Add(new Diagnostic(
                        dot.Left.File,
                        dot.Left.Line,
                        dot.Left.Column,
                        length: variableName.Name.Length,
                        "Unknown variable",
                        DiagnosticCode.UnknownVariable));
                    return diagnostics;
                }
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
                    return diagnostics;
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
                        length: fieldName.Length,
                        $"Unknown field: {fieldName.Name}",
                        DiagnosticCode.UnknownField));
                    return diagnostics;
                }
                dot.NodeType = field.NodeType;
            }
            #endregion
            #region "DerefArrow"
            if (node is DerefArrow derefArrowNode)
            {

                // Need to set up the types on the DerefArrow
                var variableName = derefArrowNode.Left as Identifier;
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
                if (variable is null)
                {
                    diagnostics.Add(new Diagnostic(
                        derefArrowNode.Left.File,
                        derefArrowNode.Left.Line,
                        derefArrowNode.Left.Column,
                        length: variableName.Name.Length,
                        "Unknown variable",
                        DiagnosticCode.UnknownVariable));
                    return diagnostics;
                }
                if (variable.Node.NodeType.Name != ParserContext.NativeTypes.Pointer.Name)
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
                var type = variable.Node.NodeType.SubTypes.FirstOrDefault();
                if (type is null)
                {
                    diagnostics.Add(new Diagnostic(
                        derefArrowNode.Left.File,
                        derefArrowNode.Left.Line,
                        derefArrowNode.Left.Column,
                        $"Unknown type: {variableName.Name}",
                        DiagnosticCode.UnknownType));
                    return diagnostics;
                }
                var fieldName = derefArrowNode.Right as Identifier;
                var field = type.Body.Where(fld => fld.Identifier == fieldName.Name).FirstOrDefault();
                if (field is null)
                {
                    diagnostics.Add(new Diagnostic(
                        derefArrowNode.Right.File,
                        derefArrowNode.Right.Line,
                        derefArrowNode.Right.Column,
                        length: fieldName.Name.Length,
                        $"Unknown field: {fieldName.Name}",
                        DiagnosticCode.UnknownField));
                    return diagnostics;
                }
                derefArrowNode.NodeType = field.NodeType;
            }
            #endregion
            #region "ParenGroup"
            if (node is ParenGroup pGroup)
            {
                foreach (var childNode in pGroup.Nodes)
                {
                    diagnostics.AddRange(Check(childNode, ctx));
                }
                if (pGroup.Nodes.Count > 0)
                {
                    pGroup.NodeType = pGroup.Nodes.LastOrDefault().NodeType;
                }
            }
            #endregion
            #region "Incr"
            if (node is Incr incrNode)
            {
                diagnostics.AddRange(Check(incrNode.Parameter, ctx));
                // Not sure if we want to disallow doing this on non ints yet:
                // if (!incrNode.Parameter.NodeType.Equals(ParserContext.NativeTypes.LangInt))
                // {
                //     var length = 0;
                //     if (incrNode.Parameter is Identifier incrId)
                //     {
                //         length = incrId.Name.Length;
                //     }
                //     diagnostics.Add(new Diagnostic(
                //         incrNode.File,
                //         incrNode.Line,
                //         incrNode.Column,
                //         length,
                //         $"Cannot perform incr op on type {incrNode.Parameter.NodeType.GetName()}",
                //         DiagnosticCode.InvalidTypes
                //     ));
                //     return diagnostics;
                // }
            }
            #endregion
            #region "Decr"
            if (node is Decr decrNode)
            {
                diagnostics.AddRange(Check(decrNode.Parameter, ctx));
                // Not sure if we want to disallow doing this on non ints yet:
                // if (!decrNode.Parameter.NodeType.Equals(ParserContext.NativeTypes.LangInt))
                // {
                //     var length = 1;
                //     if (decrNode.Parameter is Identifier decrId)
                //     {
                //         length = decrId.Name.Length;
                //     }
                //     diagnostics.Add(new Diagnostic(
                //         decrNode.File,
                //         decrNode.Line,
                //         decrNode.Column,
                //         length,
                //         $"Cannot perform incr op on type {decrNode.Parameter.NodeType.GetName()}",
                //         DiagnosticCode.InvalidTypes
                //     ));
                //     return diagnostics;
                // }
            }
            #endregion
            #region "AddressOf"
            if (node is AddressOf addressOfNode)
            {
                // Get the type on the parameter
                diagnostics.AddRange(Check(addressOfNode.Parameter, ctx));
                addressOfNode.NodeType = new LangType("ptr", null, null, 0, 0) { SubTypes = new List<LangType> { addressOfNode.Parameter.NodeType  } };
            }
            #endregion
            #region "Deref"
            if (node is Deref derefNode)
            {
                var parameter = derefNode.Parameter;
                if (parameter is null)
                {
                    diagnostics.Add(new Diagnostic(
                        parameter.File,
                        parameter.Line,
                        parameter.Column,
                        "No parameter for deref op",
                        DiagnosticCode.SyntaxError
                    ));
                    return diagnostics;
                }
                // TODO: Improve
                // if (!(parameter is Identifier identifier))
                // {
                //     diagnostics.Add(new Diagnostic(
                //         parameter.File,
                //         parameter.Line,
                //         parameter.Column,
                //         $"Invalid token type. Expected {typeof(Identifier)}, got {parameter.GetType()}",
                //         DiagnosticCode.SyntaxError
                //     ));
                //     return diagnostics;
                // }
                // diagnostics.AddRange(Check(identifier, ctx));
                // derefNode.NodeType = identifier.NodeType.SubTypes.FirstOrDefault();
                if (parameter.NodeType.Name == "ptr")
                {
                    derefNode.NodeType = parameter.NodeType.SubTypes.FirstOrDefault();
                }
                diagnostics.AddRange(Check(parameter, ctx));
            }
            #endregion
            #region "Return"
            if (node is Return returnNode)
            {
                if (!(returnNode.Parameter is null))
                {
                    diagnostics.AddRange(Check(returnNode.Parameter, ctx));
                    returnNode.NodeType = returnNode.Parameter.NodeType;
                }
            }
            #endregion
            return diagnostics;
        }
        #endregion
    }
}
