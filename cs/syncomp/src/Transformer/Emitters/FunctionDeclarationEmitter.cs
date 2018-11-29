using System;
using System.Collections.Generic;

namespace syncomp
{
  public class FunctionDeclarationEmitter : IEmitter
  {
    public Type Match => typeof(FunctionDeclaration);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var fcNode = node as FunctionDeclaration;
      var name = fcNode.Name ?? $"function_{TransformerHelpers.GetUID()}";
      var memoryAddress = $"{name}";
      var transformer = new Transformer();
      lines.Add($"jmp >{memoryAddress}_end");
      lines.Add($":{name}");
      ctx.Variables.Push();
      lines.AddRange(transformer.Transform(fcNode.Parameters, ctx));
      for (var index = 0; index < fcNode.Parameters.Count; index++) {
        var parameter = fcNode.Parameters[index];
        var variable = ctx.Variables.Get((parameter as VariableDeclaration).Identifier);
        lines.Add($"wmem >{variable.MemoryAddress} reg{index}");
      }
      lines.AddRange(transformer.Transform(fcNode.Expression, ctx));
      lines.Add("ret");
      lines.Add($":{memoryAddress}_end");
      //Manually add variable
      lines.Add($"set reg{ctx.RegisterLevel} >{name}");
      ctx.Variables.Pop();
      return lines;
    }
  }
}