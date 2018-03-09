;ZADANIE 1
(defun f ( x)
  (* x x x x))

;(print(f 2))
;(print(f 3))
;(print(f 12))

;ZADANIE 2
(defun wiekszy(a b)
  (if (< a b)
      b a))

;(print (wiekszy 2 5))
;(print (wiekszy 4 1))

;ZADANIE 3
(defun rozw (a b c)
  (if (= a 0)
      (if (= b 0)
          (if (= c 0)
              T;a=b=c=0
            NIL;c!=0
          )
        (/ (- c) b));a=0, b!=0;
    (let(d)
      (setq d (- (* b b) (* 4 a c)));delta rownania
    (if (> d 0)
        (list (/ (- (- b) (sqrt d)) 2 a) (/ (- b (sqrt d)) 2 a))
      (if (= d 0)
          (list (/ (- b (sqrt d)) 2 a))
        NIL)
      );false statment of a = 0
    )
  )
)

;(print (rozw 1 0 1))
;(print (rozw 1 2 1))
;(print (rozw 1 2 0))
;(print (rozw 0 0 0))

;ZADANIE 4
(defun dzien(n)
  (case n 
    ((0 7) 'Niedziela)
    (1 'Poniedzialek)
    (2 'Wtorek)
    (3 'Sroda)
    (4 'Czwartek)
    (5 'Piatek)
    (6 'Sobota))
)

;(print (dzien 7))

;ZADANIE 5
(defun usun-liczby (L)
  (remove-if #'numberp L)
)

(defun usun-dodatnie (L)
  (remove-if #'(lambda (X) (and (numberp X) (< 0 X))) L)
)


;(print (usun-liczby '(4 x -4 y 2 z -2 t 3 -3)))
;(print (usun-dodatnie '(4 x -4 y 2 z -2 t 3 -3)))

;ZADANIE 6
(defun rozklad (n)
  (if (< n 2) 
      NIL 
    (let (lista d)
      (setq lista nil)
      (setq d 2)
      (loop 
       (if (= 0 (mod n d))
           (progn 
             (setq n (/ n d))
             (setq lista (append lista (list d)))
             )
         (setq d (+ d 1))
         )
       (when (= n 1) (return lista))
       )
      )
    )
  )

;(print (rozklad 1))
;(print (rozklad 6))
;(print (rozklad 24))
;(print (rozklad 167852))
