using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public abstract class Behavior
  {
    public Behavior()
    {
      this.Given();
    }

    protected T TrapException<T>(Action cb) where T : Exception
    {
      try
      {
        cb();
      }
      catch(T error)
      {
        return (T)error;
      }
      return null;
    }

    protected abstract void Given();
  }
}