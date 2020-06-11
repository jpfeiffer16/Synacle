using System;
using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
    public class VariableAssignmentEmitter : IEmitter
    {
        public Type Match => typeof(VariableAssignment);

        public List<string> Transform<T>(T node, Context ctx) where T : AstNode
        {
            var lines = new List<string>();
            var vaNode = node as VariableAssignment;
            // Variable variable = null;
            string memoryAddress = null;
            var isMemoryAddressRuntimeComputed = false;

            if (vaNode.Identifier is Identifier)
            {
                var variable = ctx.Variables.Get((vaNode.Identifier as Identifier).Name);
                memoryAddress = variable.MemoryAddress;
            }
            else if (vaNode.Identifier is VariableDeclaration)
            {
                lines.AddRange(new Transformer(new List<AstNode> { vaNode.Identifier }, ctx).Transform());
                var variable = ctx.Variables.Get((vaNode.Identifier as VariableDeclaration).Identifier);
                memoryAddress = variable.MemoryAddress;
            }
            else if (vaNode.Identifier is Dot dot)
            {
                var variable = ctx.Variables.Get((dot.Left as Identifier).Name);
                // memoryAddress = $"fld_{(dot.Left as Identifier).Name}_{(dot.Right as Identifier).Name}";
                var fieldName = TransformerHelpers.GetUID(
                        variable.VariableDeclaration.File,
                        variable.VariableDeclaration.Identifier,
                        variable.VariableDeclaration.Line,
                        variable.VariableDeclaration.Column);
                memoryAddress = $"fld_{fieldName}_{(dot.Right as Identifier).Name}";
            }

            // if (!isMemoryAddressRuntimeComputed)
            // {
                lines.AddRange(new Transformer(new List<AstNode> { vaNode.Parameter }, ctx).Transform());
            // }
            if (vaNode.Identifier is DerefArrow derefArrowNode)
            {
                var variable = ctx.Variables.Get((derefArrowNode.Left as Identifier).Name);
                var type = variable.VariableDeclaration.NodeType.SubTypes.FirstOrDefault();
                var offset = TypeHelper.GetFieldOffset(type, (derefArrowNode.Right as Identifier).Name);
                lines.Add($"rmem reg7 >{variable.MemoryAddress}");
                lines.Add($"add reg7 reg7 {offset}");
                // lines.Add($"rmem reg{ctx.RegisterLevel} reg{ctx.RegisterLevel}");
                isMemoryAddressRuntimeComputed = true;
            }
            var memoryAddressString = isMemoryAddressRuntimeComputed ? "reg7" : $">{memoryAddress ?? throw new Exception("Unknown memory address")}";
            // If the right-hand operand is a struct, we will do a struct copy.
            // This makes the assumption that the left-hand operand is of the same type,
            // but the type checker should enforce that
            if (vaNode.Parameter.NodeType.Body?.Count > 0)
            {
                //Translate compiletime-computed to runtime-computed so we can get offsets
                if (!isMemoryAddressRuntimeComputed)
                {
                    lines.Add($"set reg7 >{memoryAddress}");
                }
                lines.Add($"add reg7 reg7 {vaNode.Parameter.NodeType.Body.Count}");
                foreach (var _ in vaNode.Parameter.NodeType.Body)
                {
                    lines.Add($"pop reg{ctx.RegisterLevel}");
                    lines.Add($"wmem reg7 reg{ctx.RegisterLevel}");
                    lines.Add("add reg7 reg7 32767");
                }
            }
            else
            {
                lines.Add($"wmem {memoryAddressString} reg0");
            }

            return lines;
        }
    }
}
