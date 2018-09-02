using System.Collections.Generic;
using System.Linq;

namespace syncomp
{
  public class VariableStack {
    // public List<Variable> Variables = new List<Variable>();

    private Stack<List<Variable>> Stack = new Stack<List<Variable>>();

    public VariableStack() {
      this.Push();
    }

    public void Push() {
      this.Stack.Push(new List<Variable>());
    }

    public void Pop() => this.Stack.Pop();

    public void Add(Variable variable) {
      this.Stack.First().Add(variable);
    }

    public Variable Get(string name) {
      foreach (var frame in Stack) {
        var variable = frame.Find(fm => fm.Name == name);
        if (variable != null) {
          return variable;
        }
      }
      return null;
    }
  }
}