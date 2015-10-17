using System;
using System.Runtime.InteropServices;

public class StringTools
{
    [DllImport("../target/debug/libstringtools.so")]
    public static extern Int32 count_substrings(string value, string substr);

    static public void Main()
    {
        Console.WriteLine(count_substrings("bąnana", "na"));
    }
}
