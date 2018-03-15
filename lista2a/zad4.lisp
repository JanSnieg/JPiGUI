(defmacro where(&rest args)
	`#'(lambda (cd) 
             (and ,@(loop while args
		collecting `(equal (getf cd ,(pop args)) ,(pop args)))
                ))
             )
		
;(print(where :a 1 :b 2))
(print (macroexpand '(where)))
(print (macroexpand '(where :autor "Sienkiewicz")))
(print (macroexpand '(where :autor "Sienkiewicz" :lang "pl")))

(defvar *spis* '(
(:imie "Jan" :nazwisko "Kowalski" :kierunek "Fizyka" :rok 1)
(:imie "Ewa" :nazwisko "Nowak" :kierunek "Prawo" :rok 2)
(:imie "Marek" :nazwisko "Markowski" :kierunek "Fizyka" :rok 2)
(:imie "Adam" :nazwisko "Pietrzak" :kierunek "Fizyka" :rok 1)
(:imie "Zofia" :nazwisko "Sienkiewicz" :kierunek "Chemia" :rok 1)
(:imie "J�zef" :nazwisko "Koper" :kierunek "Fizyka" :rok 1)
))

(print (remove-if-not (where :kierunek "Fizyka" :rok 1) *spis*))