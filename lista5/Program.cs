using System;

namespace lista5
{
    class Program
    {
        static void Main(string[] args)
        {
            //ZADANIE 1
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
            //ZADANIE 2
            Calkowite liczba = new Calkowite(5);
            for(int i=0; i<6; i++)
            {
                liczba.WypiszStan();
                liczba.Liczba = i*i;
                Console.WriteLine(liczba.Liczba);
            }
            liczba.Ureguluj();
            liczba.Liczba = 15;
            liczba.WypiszStan();
        }
    }
}
