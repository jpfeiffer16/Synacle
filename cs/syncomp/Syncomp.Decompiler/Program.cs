using System;
using System.IO;

namespace Syncomp.Decompiler
{
    class Program
    {
        static void Main(string[] args)
        {
            var bin = File.ReadAllText(args[0]);
        }
    }
}
