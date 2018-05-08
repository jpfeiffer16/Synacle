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
      instruction.Action(state, args);
    }
    state.IntPtr++;
  }
}