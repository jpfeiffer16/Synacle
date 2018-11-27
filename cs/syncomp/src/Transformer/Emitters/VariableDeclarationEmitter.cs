using System;
using System.Collections.Generic;

namespace syncomp
{
  public class VariableDeclarationEmitter : IEmitter
  {
    public Type Match => typeof(VariableDeclaration);

    public List<string> Transform<T>(T node, Context ctx) where T : AstNode
    {
      Console.WriteLine("Getting here!");
      throw new NotImplementedException();
    }
  }
}