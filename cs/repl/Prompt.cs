using System;
using System.Text;
using System.Collections.Generic;

namespace repl
{
    public class Prompt
    {
        private readonly Action<string> lineAction;
        private readonly List<string> historyStack = new List<string>();

        //NOTE: For debugging purposes only!
        private readonly Logger logger = new Logger();

        private StringBuilder keys = new StringBuilder();
        private int cursorIndex = 0;

        private void InsertChar(char insertChar)
        {
            this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
            Console.Write(insertChar);
            keys.Insert(this.cursorIndex, insertChar);
            this.cursorIndex++;
            for (var i = this.cursorIndex; i < this.keys.Length; i++)
            {
                var reWriteChar = this.keys[i];
                Console.Write(reWriteChar);
            }
            for (var i = this.cursorIndex; i < this.keys.Length; i++)
            {
                Console.Write("\b");
            }
            this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
        }

        private void DeleteChar()
        {
            if (this.cursorIndex > 0)
            {
                this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
                keys.Remove(this.cursorIndex - 1, 1);
                this.cursorIndex--;
                Console.Write("\b");
                this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
                if (this.cursorIndex == this.keys.Length)
                {
                    this.logger.Log("One");
                    Console.Write(" ");
                    Console.Write("\b");
                }
                else
                {
                    this.logger.Log("Two");
                    for (var i = this.cursorIndex; i < this.keys.Length; i++)
                    {
                        var reWritechar = this.keys[i];
                        Console.Write(reWritechar);
                    }
                    Console.Write(" ");
                    Console.Write("\b");
                    for (var i = this.cursorIndex; i < this.keys.Length; i++)
                    {
                        Console.Write("\b");
                    }
                }
            }
        }

        private void CursorLeft()
        {
            this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
            if (this.cursorIndex > 0)
            {
                this.cursorIndex--;
                Console.Write("\b");
            }
            this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
        }

        private void CursorRight()
        {
            this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
            if (this.cursorIndex < this.keys.Length)
            {
                this.cursorIndex++;
                Console.SetCursorPosition(Console.CursorLeft + 1, Console.CursorTop);
            }
            this.logger.Log(string.Format("{0}, {1}", this.cursorIndex, this.keys.Length));
        }

        public Prompt(Action<string> lineAction)
        {
            this.lineAction = lineAction;
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
                        this.cursorIndex = 0;
                        this.keys = new StringBuilder();
                        break;
                    }
                    if (key.Key == ConsoleKey.UpArrow)
                    {
                        for (var i = 0; i < this.keys.Length; i++)
                        {
                            Console.Write("\b");
                            Console.Write(" ");
                            Console.Write("\b");
                        }
                        this.cursorIndex = 0;
                        this.keys = new StringBuilder();
                    }
                    if (key.Key == ConsoleKey.DownArrow)
                    {
                    }
                    if (key.Key == ConsoleKey.Backspace)
                    {
                        this.DeleteChar();
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
