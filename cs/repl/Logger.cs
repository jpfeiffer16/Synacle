using System.IO;

namespace repl
{
    public static class Logger
    {
        public static void Log(string message)
        {
            File.AppendAllText("./log.txt", string.Format("{0}\n", message));
        }
    }
}
