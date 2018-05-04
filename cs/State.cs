using System;
using System.Collections.Generic;

public class State {
  public UInt16[] Heap { get; set; }
  public Stack<UInt16> Stack { get; set; }
  public UInt16[] Registers { get; set; }
  public UInt16 IntPtr { get; set; }
  public string TypedChars { get; set; }
}