using System;
using System.Collections.Generic;

public class State {
  public ushort[] Heap { get; set; }
  public Stack<ushort> Stack { get; set; }
  public ushort[] Registers { get; set; }
  public ushort InPtr { get; set; }
  public string TypedChars { get; set; }
  public bool Stopped { get; set; }
}