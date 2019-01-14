using System.IO;

namespace repl
{
    public class Logger
    {
        private const string FILEPATH = "./log.txt";

        public Logger()
        {
            File.AppendAllText(FILEPATH, ">--\n");
        }

        public void Log(string message)
        {
            File.AppendAllText(FILEPATH, "--\n");
            File.AppendAllText(FILEPATH, string.Format("{0}\n", message));
        }
    }
}
