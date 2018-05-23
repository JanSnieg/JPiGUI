using System;
using System.Collections.Generic;

namespace lista7 {
    public class Tworca {
        // Tworzenie delegata nowego obserwatora
        public delegate void nowy_obserwator_delegat (List<Obserwator> lista_obserwatorow);
        // i eventu do tego obserwatora
        public event nowy_obserwator_delegat nowy_obserwator_stworzony;
        public delegate void przedstaw_sie_delegacie ();
        public event przedstaw_sie_delegacie przedstaw_sie_stworzony;

        public List<Obserwator> them;

        // KONSTRUKTOR
        public Tworca () {
            them = new List<Obserwator> ();
        }
        // Nowy obserwator
        public void stworz_nowy_obserwator () {
            // tworzenie nowego obserwatora
            Obserwator obs = new Obserwator ();
            // dodanie tego obserwatora do listy twórcy
            this.them.Add (obs);
            // przepisanie zmiennych obserwatora do tworcy
            this.nowy_obserwator_stworzony += obs.nowy_obserwator_event;
            this.przedstaw_sie_stworzony += obs.przedstaw_sie_event;
            // Funkcja obserwatora, ktora sprawdza odleglosci itd.
            nowy_obserwator_stworzony (this.them);
            // Obserwator sie przedstawia
            przedstaw_sie_stworzony ();
        }
    }
}