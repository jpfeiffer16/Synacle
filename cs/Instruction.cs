using System;
using System.Collections.Generic;
using System.Text;

public class Instruction {
  public string OpCode { get; set; }
  public int ArgCount { get; set; }
  public Action<State, ushort[]> Action { get; set; }

  public static List<Instruction> GetInstructions() {
    return new List<Instruction>() {
      new Instruction() {
        OpCode = "halt",
        ArgCount = 0,
        Action = (State state, ushort[] args) => {
          state.Stopped = true;
        }
      },
      //TODO: Use SetValue here
      new Instruction() {
        OpCode = "set",
        ArgCount = 2,
        Action = (State state, ushort[] args) => {
          state.Registers[args[0] - 32768] = Instruction.GetValue(state, args[1]);
        }
      },
      new Instruction() {
        OpCode = "push",
        ArgCount = 1,
        Action = (State state, ushort[] args) => {
          state.Stack.Push(Instruction.GetValue(state, args[0]));
        }
      },
      new Instruction() {
        OpCode = "pop",
        ArgCount = 1,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(state, args[0], state.Stack.Pop());
        }
      },
      new Instruction() {
        OpCode = "eq",
        ArgCount = 3,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)(Instruction.GetValue(state, args[1]) == Instruction.GetValue(state, args[2]) ? 1 : 0)
          );
        }
      },
      new Instruction() {
        OpCode = "gt",
        ArgCount = 3,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)(Instruction.GetValue(state, args[1]) > Instruction.GetValue(state, args[2]) ? 1 : 0)
          );
        }
      },
      new Instruction() {
        OpCode = "jmp",
        ArgCount = 1,
        Action = (State state, ushort[] args) => {
          state.InPtr = (ushort)(Instruction.GetValue(state, args[0]) - 1);
        }
      },
      new Instruction() {
        OpCode = "jt",
        ArgCount = 2,
        Action = (State state, ushort[] args) => {
          if (Instruction.GetValue(state, args[0]) != 0) {
            state.InPtr = (ushort)(Instruction.GetValue(state, args[1]) - 1);
          }
        }
      },
      new Instruction() {
        OpCode = "jf",
        ArgCount = 2,
        Action = (State state, ushort[] args) => {
          if (Instruction.GetValue(state, args[0]) == 0) {
            state.InPtr = (ushort)(Instruction.GetValue(state, args[1]) - 1);
          }
        }
      },
      new Instruction() {
        OpCode = "add",
        ArgCount = 3,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)((Instruction.GetValue(state, args[1]) + Instruction.GetValue(state, args[2])) % 32768)
          );
        }
      },
      new Instruction() {
        OpCode = "mult",
        ArgCount = 3,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)(
              (
                Instruction.GetValue(state, args[1])
                *
                Instruction.GetValue(state, args[2])
              ) % 32768
            )
          );
        }
      },
      new Instruction() {
        OpCode = "mod",
        ArgCount = 3,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)(
              Instruction.GetValue(state, args[1])
              %
              Instruction.GetValue(state, args[2])
            )
          );
        }
      },
      new Instruction() {
        OpCode = "and",
        ArgCount = 3,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)(
              Instruction.GetValue(state, args[1])
              &
              Instruction.GetValue(state, args[2])
            )
          );
          // (ushort)(args[1] & args[2]);
        }
      },
      new Instruction() {
        OpCode = "or",
        ArgCount = 3,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)(
              Instruction.GetValue(state, args[1])
              |
              Instruction.GetValue(state, args[2])
            )
          );
          // (ushort)(args[1] | args[2])
        }
      },
      new Instruction() {
        OpCode = "not",
        ArgCount = 2,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(
            state,
            args[0],
            (ushort)(
              (ushort)(~Instruction.GetValue(state, args[1])) % 32768
            )
          );
          // (ushort)(((ushort)(~args[1])  % 32768))
        }
      },
      new Instruction() {
        OpCode = "rmem",
        ArgCount = 2,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(state, args[0], state.Heap[Instruction.GetValue(state, args[1])]);
        }
      },
      new Instruction() {
        OpCode = "wmem",
        ArgCount = 2,
        Action = (State state, ushort[] args) => {
          Instruction.SetValue(state, Instruction.GetValue(state, args[0]), args[1]);
        }
      },
      new Instruction() {
        OpCode = "call",
        ArgCount = 1,
        Action = (State state, ushort[] args) => {
          state.Stack.Push((ushort)(state.InPtr + args.Length));
          state.InPtr = (ushort)(Instruction.GetValue(state, args[0]) - 1);
        }
      },
      new Instruction() {
        OpCode = "ret",
        ArgCount = 0,
        Action = (State state, ushort[] args) => {
          state.InPtr = (ushort)(Instruction.GetValue(state, state.Stack.Pop()) - 1);
        }
      },
      new Instruction() {
        OpCode = "out",
        ArgCount = 1,
        Action = (State state, ushort[] args) => {
          Console.Write(Convert.ToChar(Instruction.GetValue(state, args[0])));
        }
      },
      new Instruction() {
        OpCode = "in",
        ArgCount = 1,
        Action = (State state, ushort[] args) => {
          if (string.IsNullOrEmpty(state.TypedChars)) {
            state.TypedChars = Console.ReadLine() + "\n";
          }
          var character = state.TypedChars[0];
          state.TypedChars = state.TypedChars.Substring(1);
          Instruction.SetValue(state, args[0], Convert.ToUInt16(character));
        }
      },
      new Instruction() {
        OpCode = "noop",
        ArgCount = 0,
        Action = (State state, ushort[] args) => {
          //NOOP
        }
      }
    };
  }

  private static ushort GetValue(State state, ushort address) {
    if (address < 32768) {
      return address;
    } else {
      return state.Registers[address - 32768];
    }
  }

  private static void SetValue(State state, ushort address, ushort value) {
    if (address > 32767) {
      state.Registers[address - 32768] = Instruction.GetValue(state, value);
    } else {
      state.Heap[address] = Instruction.GetValue(state, value);
    }
  }
}