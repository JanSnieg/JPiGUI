using System;
namespace lista5
{
    class Calkowite
    {
        private int liczba;
        private int liczba_operacji;
        private int countIn;
        private int countOut;
        public int Liczba
        {
            get
            { 
                if(liczba_operacji > countOut)
                {
                    countOut++;
                    return liczba;
                }
                else
                return -1;
            }
            set
            {
                if(liczba_operacji > countIn)
                {
                    countIn++;
                    liczba = value;
                }
            }
        }
        public Calkowite(int value)
        {
            liczba_operacji = value;
            countIn = countOut = 0;
        }
        public void Ureguluj()
        {
            countIn = countOut = 0;
        }
        public void WypiszStan()
        {
            string result = "Wejscie:\t" + countIn;
            result += "\nWyjscie:\t" + countOut + "\n";
            Console.Write(result);
        }
    }
}