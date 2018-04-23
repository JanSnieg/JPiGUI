using System;

namespace lista5
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Podaj liczbe naturalną: ");
            int n = Convert.ToInt32(Console.ReadLine());
            string result =  "";
            for(int i = 1; i<=n; i++)
            {
                for(int j = 1; j<=n; j++)
                {
                    result += string.Format("{0,4}", i*j);
                }
                result += string.Format("\n");
            }
            Console.Write(result);
        }
    }
}
