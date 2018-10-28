using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace syncomp.Tests
{
  [TestClass]
  public class FunctionDeclarationPathEval : Behavior
  {
    private (int, AstNode) result;
    private (int, AstNode) resultAnonymous;

    protected override void Given()
    {
      var tokens = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.FunctionDeclaration,
          Token = "function"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.Identifier,
          Token = "test"
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
          Token = "a"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.RightParen,
          Token = ")"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.LeftCurly,
          Token = "{"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.RightCurly,
          Token = "}"
        }
      };
      var tokensAnon = new List<SyntaxToken>
      {
        new SyntaxToken
        {
          Type = SyntaxTokenType.FunctionDeclaration,
          Token = "function"
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
          Token = "a"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.RightParen,
          Token = ")"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.LeftCurly,
          Token = "{"
        },
        new SyntaxToken
        {
          Type = SyntaxTokenType.RightCurly,
          Token = "}"
        }
      };
      var nodes = new List<AstNode>();
      var index = 0;

      this.result = new FunctionDeclarationPath().Eval(index, tokens, nodes);
      index = 0;

      this.resultAnonymous = new FunctionDeclarationPath().Eval(index, tokensAnon, nodes);
    }

    [TestMethod]
    public void IndexIsCorrect()
    {
      Assert.AreEqual(7, this.result.Item1);
    }

    [TestMethod]
    public void AstNodeIsCorrect()
    {
      Assert.IsInstanceOfType(this.result.Item2, typeof(FunctionDeclaration));
    }

    [TestMethod]
    public void AstNodeNameIsCorrect()
    {
      Assert.AreEqual(
        ((FunctionDeclaration)this.result.Item2).Name,
        "test"
      );
    }

    [TestMethod]
    public void AstNodeParametersCountIsCorrect()
    {
      Assert.AreEqual(
        1,
        ((FunctionDeclaration)this.result.Item2).Parameters.Count
      );
    }

    [TestMethod]
    public void AstNodeFirstParameterIsCorrect()
    {
      Assert.IsInstanceOfType(
        ((FunctionDeclaration)this.result.Item2).Parameters.FirstOrDefault(),
        typeof(VariableDeclaration)
      );
    }

    [TestMethod]
    public void AstNodeAnonymousHasNoName()
    {
      Assert.AreEqual(
        ((FunctionDeclaration)this.resultAnonymous.Item2).Name,
        null
      );
    }
  }
}