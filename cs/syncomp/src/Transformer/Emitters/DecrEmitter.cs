using System;
using System.Collections.Generic;

namespace syncomp
{
  public class DecrEmitter : IEmitter
  {
    public Type Match => typeof(Decr);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      var lines = new List<string>();
      var dcNode = node as Decr;

      lines.AddRange(new Transformer().Transform(new List<AstNode> { dcNode.Parameter }, ctx));;
      lines.Add("set reg1 1");
      lines.Add($"call >subtract");
      lines.Add($"wmem >{ctx.Variables.Get((dcNode.Parameter as Identifier).Name).MemoryAddress} reg0");

      return lines;
    }
  }
}