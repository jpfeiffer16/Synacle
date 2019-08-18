using System;
using System.Collections.Generic;

namespace syncomp
{
  public interface IEmitter
  {
    Type Match { get; }

    List<string> Transform<T>(T node, Context ctx) where T : AstNode;
  }
}