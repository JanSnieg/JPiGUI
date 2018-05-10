using System;
using System.Collections.Generic;

namespace lista6
{
    public class Lista
    {
        public List<int> lista;
        public Lista(int size)
        {
            // Konstruktor jednoargumentowy
            lista = new List<int>(size);
            Random rand = new Random();
            for(int i=0; i<size; i++)
            {

                lista.Add(rand.Next(0,100));
            }
        }
        public Lista()
        {
            // Konstruktor bazowy, losuje 5 liczb z zakresu 1,100
            Random rand = new Random();
            lista = new List<int>(rand.Next(1,5));
            for(int i=0; i<lista.Count; i++)
            {
                lista.Add(rand.Next(0,100));
            }
        }
    }
    public class Lista1 : Lista, IComparable<Lista1>
    {
        public Lista1(int size) :base(size){}
        public Lista1():base(){}
        // pokazanie ze ta klasa ma dziedziczyć konstruktory z klasy Lista
        public int CompareTo(Lista1 that)
        {
            if (that == null) return 1;
            else if (that == this) return 0;
            for (int i = 0; i<that.lista.Count && i<this.lista.Count; i++)
            {
                if(this.lista[i] > that.lista[i])
                    return 1;
                else if(this.lista[i] < that.lista[i])
                    return -1;
            }
            return 0;
        }
    }
    public class Lista2 : Lista, IComparable<Lista2>
    {
        public Lista2(int size) :base(size){}
        public Lista2():base(){}
        public int CompareTo(Lista2 that)
        {
            if (that == null) 
                return 1;
            else if (that == this) 
                return 0;
            else if (this.lista.Count > that.lista.Count)
                return 1;
            else if (this.lista.Count < that.lista.Count)
                return -1;
            for (int i = 0; i<that.lista.Count && i<this.lista.Count; i++)
            {
                if(this.lista[i] > that.lista[i])
                    return 1;
                else if(this.lista[i] < that.lista[i])
                    return -1;
            }
            return 0;
        }
    }
}