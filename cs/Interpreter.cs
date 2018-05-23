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
    var args = new ushort[instruction.ArgCount];
    if (instruction != null) {
      for (var i = 0; i < instruction.ArgCount; i++) {
        args[i] = state.Heap[++state.IntPtr];
      }
      // this.Log(state, instruction, args);
      instruction.Action(state, args);
    }
    state.IntPtr++;
  }

  private void Log(State state, Instruction instruction, ushort[] args) {
    using (var stream = System.IO.File.AppendText("./log.txt")) {
      stream.Write(String.Format("{0}: {1} {2}\n", state.IntPtr, instruction.OpCode, String.Join(" ", args)));
    }
  }
}