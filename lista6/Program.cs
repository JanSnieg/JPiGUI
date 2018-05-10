using System;
using System.Collections.Generic;

namespace lista6 {
    class Program {
        static void Main (string[] args) {
            var lista1 = new List<Lista1> {
                new Lista1 (10),
                new Lista1 (),
                new Lista1 (3),
                new Lista1 (5),
                new Lista1 (7),
            };
            var lista2 = new List<Lista2> {
                new Lista2 (10),
                new Lista2 (),
                new Lista2 (3),
                new Lista2 (5),
                new Lista2 (7),
            };
            Console.WriteLine ("5 list klasy Lista1:");
            foreach (var variable in lista1) {
                foreach (var x in variable.lista) {
                    Console.Write (x + " ");
                }
                Console.WriteLine ();
            }

            lista1.Sort ();

            Console.WriteLine ();
            Console.WriteLine ();

            Console.WriteLine ("Posortowane elementy Listy1:");
            foreach (var variable in lista1) {
                foreach (var x in variable.lista) {
                    Console.Write (x + " ");
                }
                Console.WriteLine ();
            }

            Console.WriteLine ();
            Console.WriteLine ();

            Console.WriteLine ("5 list klasy Lista2:");
            foreach (var variable in lista2) {
                foreach (var x in variable.lista) {
                    Console.Write (x + " ");
                }
                Console.WriteLine ();
            }

            Console.WriteLine ();
            Console.WriteLine ();

            lista2.Sort ();

            Console.WriteLine ("Posortowane elementy Listy2:");
            foreach (var variable in lista2) {
                foreach (var x in variable.lista) {
                    Console.Write (x + " ");
                }
                Console.WriteLine ();
            }
        }
    }
}