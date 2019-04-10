using System;
using System.Text;
using System.Collections.Generic;

namespace repl
{
    public class Prompt
    {
        private string prompt;
        private readonly Action<string> lineAction;
        private readonly List<StringBuilder> historyStack = new List<StringBuilder>();
        //NOTE: For debuggin purposes only!
        private readonly Logger logger = new Logger();
        private StringBuilder keys = new StringBuilder();

        private void SetCursorX(int x)
        {
            Console.SetCursorPosition(x, Console.CursorTop);
        }

        private void ClearAll()
        {
            this.Clear();
            this.keys = new StringBuilder();
        }

        private void Clear()
        {
            this.SetCursorX(prompt.Length + this.keys.Length);
            for (var i = 0; i < this.keys.Length; i++)
            {
                Console.Write("\b");
                Console.Write(" ");
                Console.Write("\b");
            }
        }

        private void Render()
        {
            this.SetCursorX(prompt.Length);
            for (var i = 0; i < this.keys.Length; i++)
            {
                Console.Write(this.keys[i]);
            }
        }

        private void InsertChar(char insertChar)
        {
            var index = Console.CursorLeft - prompt.Length;
            this.Clear();
            this.keys.Insert(index, insertChar);
            this.Render();
            this.SetCursorX(index + prompt.Length + 1);
        }

        public Prompt(Action<string> lineAction, string prompt = ">"/* , string bad */)
        {
            this.lineAction = lineAction;
            this.prompt = prompt;
        }

        public void Read()
        {
            while (true)
            {
                Console.Write(">");
                while (true)
                {
                    var key = Console.ReadKey(true);
                    if (key.Key == ConsoleKey.Enter)
                    {
                        Console.WriteLine();
                        this.lineAction(string.Format("{0}\n", this.keys.ToString()));
                        this.historyStack.Add(this.keys);
                        this.keys = new StringBuilder();
                        break;
                    }
                    else if (key.Key == ConsoleKey.UpArrow)
                    {
                        if (this.historyStack.Count > 0)
                        {
                            this.Clear();
                            this.keys = this.historyStack[this.historyStack.Count - 1];
                            this.Render();
                        }
                    }
                    else if (key.Key == ConsoleKey.DownArrow)
                    {
                        this.Clear();
                    }
                    else if (key.Key == ConsoleKey.Backspace)
                    {
                        // this.DeleteChar();
                    }
                    // TODO: Enable the left and right keys
                    else if (key.Key == ConsoleKey.LeftArrow)
                    {
                        // this.CursorLeft();
                    }
                    else if (key.Key == ConsoleKey.RightArrow)
                    {
                        // this.CursorRight();
                    }
                    else
                    {
                        this.InsertChar(key.KeyChar);
                    }
                }
            }
        }
    }
}
