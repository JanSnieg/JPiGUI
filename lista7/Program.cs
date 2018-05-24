using System;
using System.Collections.Generic;

namespace lista7
{
    class Program
    {
        static void Main(string[] args)
        {
            Tworca tworca = new Tworca();
            for (int i = 0; i <= 5; i++)
            {
                Console.WriteLine("\n----------krok {0}----------\n", i.ToString());
                tworca.stworz_nowy_obserwator();
            }
        }
    }
}
