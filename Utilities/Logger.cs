using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroceryAPP.Utilities
{
    public static class Logger
    {
        private const string LoggerTag = "ShoppingList";

        public static void Log(string message)
        {
            #if __ANDROID__
                Android.Util.Log.Info(LoggerTag, $"[XXX] {message}");
            #elif DEBUG
                Console.WriteLine($"[XXX] {message}");
                Trace.WriteLine($"[XXX] {message}");
            #endif
        }
    }
}
