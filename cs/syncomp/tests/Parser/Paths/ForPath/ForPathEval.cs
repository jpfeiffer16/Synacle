using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public class ForPathEval : Behavior
  {
    private (int, AstNode) result;
    private For forNode;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.For,
          Token = "for"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.LeftParen,
          Token = "("
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.VariableDeclaration,
          Token = "var"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "i"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.VariableAssignment,
          Token = "="
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "0"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.SemiColon,
          Token = ";"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "i"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.LessThan,
          Token = "<"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "10"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.SemiColon,
          Token = ";"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Incr,
          Token = "++"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "i"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.RightParen,
          Token = ")"
        }
      };
      var nodes = new List<AstNode>();
      var index = 0;

      this.result = new ForPath().Eval(index, tokens, nodes);
      this.forNode = (For)this.result.Item2;
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(10, this.result.Item1);
    }
  
    [TestMethod]
    public void AstNodeIsCorrect()
    {
      Assert.IsInstanceOfType(this.result.Item2, typeof(For));
    }

    [TestMethod]
    public void AstNodeInitIsCorrect()
    {
      Assert.IsInstanceOfType(this.forNode.Init, typeof(VariableAssignment));
    }
  }
}