using System;

namespace syncomp
{
  public static class TransformerHelpers
  {
    public static string GetUID()
    {
      return Guid.NewGuid().ToString().Substring(24);
    }
  }
}