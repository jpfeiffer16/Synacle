using System;
using System.Collections.Generic;

public class Instruction {
  public string OpCode { get; set; }
  public int ArgCount { get; set; }
  public Action<State, UInt16[]> Action { get; set; }

  public static List<Instruction> GetInstructions() {
    return new List<Instruction>() {
      new Instruction() {
        OpCode = "halt",
        ArgCount = 0,
        Action = (State state, UInt16[] args) => {
          Environment.Exit(0);
        }
      },
      new Instruction() {
        OpCode = "set",
        ArgCount = 2,
        Action = (State state, UInt16[] args) => {
          state.Registers[32768 - args[0]] = Instruction.GetValue(state, args[1]);
        }
      },
      new Instruction() {
        OpCode = "push",
        ArgCount = 1,
        Action = (State state, UInt16[] args) => {
          state.Stack.Push(args[0]);
        }
      },
      new Instruction() {
        OpCode = "pop",
        ArgCount = 1,
        Action = (State state, UInt16[] args) => {
          Instruction.SetValue(state, args[0], args[1]);
        }
      },
      new Instruction() {
        OpCode = "eq",
        ArgCount = 3,
        Action = (State state, UInt16[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (UInt16)(args[1] == args[2] ? 1 : 0)
          );
        }
      },
      //TODO: Need to add GetValue calls from here down
      new Instruction() {
        OpCode = "gt",
        ArgCount = 3,
        Action = (State state, UInt16[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (UInt16)(args[1] > args[2] ? 1 : 0)
          );
        }
      },
      new Instruction() {
        OpCode = "jmp",
        ArgCount = 1,
        Action = (State state, UInt16[] args) => {
          state.IntPtr = (UInt16)(args[0] - 1);
        }
      },
      new Instruction() {
        OpCode = "jt",
        ArgCount = 2,
        Action = (State state, UInt16[] args) => {
          if ()
        }
      }
    };
  }

  private static UInt16 GetValue(State state, UInt16 address) {
    if (address > 32767) {
      return address;
    } else {
      return state.Registers[address - 32768];
    }
  }

  private static void SetValue(State state, UInt16 address, UInt16 value) {
    if (value > 32767) {
      state.Registers[32768 - address] = Instruction.GetValue(state, value);
    } else {
      state.Heap[address] = value;
    }
  }
}