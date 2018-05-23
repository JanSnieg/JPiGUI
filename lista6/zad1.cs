using System;
using System.Collections.Generic;

namespace lista6 {
    public class Lista {
        static Random rand = new Random ();
        public List<int> lista;
        public Lista (int size) {
            // Konstruktor jednoargumentowy
            lista = new List<int> (size);
            for (int i = 0; i < size; i++) {
                lista.Add (rand.Next (1, 100));
            }
        }
        public Lista () {
            // Konstruktor bazowy, losuje 5 liczb z zakresu 1,100
            int max = rand.Next (1, 5);
            lista = new List<int> (max);
            for (int i = 0; i < max; i++) {
                lista.Add (rand.Next (1, 100));
            }
        }
    }
    public class Lista1 : Lista, IComparable<Lista1> {
        public Lista1 (int size) : base (size) { }
        public Lista1 () : base () { }
        // pokazanie ze ta klasa ma dziedziczyć konstruktory z klasy Lista
        public int CompareTo (Lista1 that) {
            if (that == this) return 0;
            else if (that == null) return 1;
            for (int i = 0; i < this.lista.Count && i < that.lista.Count; i++) {
                if (this.lista[i] > that.lista[i])
                    return 1;
                else if (this.lista[i] < that.lista[i])
                    return -1;
            }
            return that.lista.Count > this.lista.Count ? -1 : 1;
        }
    }
    public class Lista2 : Lista, IComparable<Lista2> {
        public Lista2 (int size) : base (size) { }
        public Lista2 () : base () { }
        public int CompareTo (Lista2 that) {
            // if (that == this)
            //     return 0;
            // else if (that == null)
            //     return 1;
            if (this.lista.Count > that.lista.Count)
                return 1;
            else if (this.lista.Count < that.lista.Count)
                return -1;
            for (int i = 0; i < that.lista.Count && i < this.lista.Count; i++) {
                if (this.lista[i] > that.lista[i])
                    return 1;
                else if (this.lista[i] < that.lista[i])
                    return -1;
            }
            return 0;
        }
    }
}