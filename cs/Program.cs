using System;
using System.IO;


namespace cs
{
    class Program
    {
        static void Main(string[] args)
        {
            var bytes = File.ReadAllBytes("../challenge.bin");


            for (var i = 0; i < bytes.Length; i += 2) {
                Console.WriteLine(
                    BitConverter.ToUInt16(
                        new byte[2] {bytes[i], bytes[i + 1]},
                        0
                    )
                );
            }
        }
    }
}
