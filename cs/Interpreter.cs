using System;
using System.Collections.Generic;

public class Interpreter {
  private State state;

  private List<Instruction> Instructions;

  public Interpreter(State state) {
    this.state = state;
    this.Instructions = Instruction.GetInstructions();
  }

  public void Step() {
    var instruction = Instructions[state.Heap[state.IntPtr]];
    // Console.WriteLine(instruction.OpCode);
    var args = new ushort[instruction.ArgCount];
    if (instruction != null) {
      for (var i = 0; i < instruction.ArgCount; i++) {
        args[i] = state.Heap[++state.IntPtr];
      }
      this.Log(state, instruction);
      instruction.Action(state, args);
    }
    state.IntPtr++;
  }

  private void Log(State state, Instruction instruction) {
    var insArgs = new List<string>();
    for (var i = 0; i < instruction.ArgCount; i++) {
      insArgs.Add(state.Heap[state.Heap[state.IntPtr - i]].ToString());
    }
    insArgs.Reverse();
    using (var stream = System.IO.File.AppendText("./log.txt")) {
      stream.Write(String.Format("{0}: {1}\n", state.IntPtr, String.Join(" ", insArgs)));
    }
  }
}