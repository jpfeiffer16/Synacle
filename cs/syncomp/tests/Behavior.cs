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
    protected abstract void Given();
  }
}