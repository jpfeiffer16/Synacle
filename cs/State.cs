using System;
using System.Collections.Generic;

public class State {
  public ushort[] Heap { get; set; }
  public Stack<ushort> Stack { get; set; }
  public ushort[] Registers { get; set; }
  public ushort IntPtr { get; set; }
  public string TypedChars { get; set; }
}