using System;
using CommandLine;

namespace synsharp {
  public class CommandLineOptions {
  [Option('i', "information", Default = false, HelpText = "Log information about the program to be run")]
  public bool Information { get; set; }

  [Option('b', "binary", HelpText = "Binary path")]
  public string Binary { get; set; }
}
}