using System;
using System.Collections.Generic;

namespace lista7 {
    public class Tworca {
        // Tworzenie delegata nowego obserwatora
        public delegate void nowy_obserwator_delegat (Obserwator He);
        // i eventu do tego obserwatora
        public event nowy_obserwator_delegat nowy_obserwator_stworzony;
        public delegate void przedstaw_sie_delegacie ();
        public event przedstaw_sie_delegacie przedstaw_sie_stworzony;

        public List<Obserwator> them;
        // KONSTRUKTOR
        public Tworca () {
            them = new List<Obserwator>();
         }
        // Nowy obserwator
        public void stworz_nowy_obserwator () {
            // tworzenie nowego obserwatora
            Obserwator obs = new Obserwator ();
            them.Add(obs);
            nowy_obserwator_stworzony (obs);
            // przepisanie zmiennych obserwatora do tworcy

            // this.nowy_obserwator_stworzony += new nowy_obserwator_event(nowy_obserwator_event);


            // this.nowy_obserwator_stworzony += obs.nowy_obserwator_event;
            // this.przedstaw_sie_stworzony += obs.przedstaw_sie_event;
            // Funkcja obserwatora, ktora sprawdza odleglosci itd.
            // Obserwator sie przedstawia
            przedstaw_sie_stworzony ();
        }
    }
}