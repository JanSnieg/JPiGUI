(defun f ( x)
  (* x x x x))

(print(f 2))
(print(f 3))
(print(f 12))


(defun wiekszy(a b)
  (if (< a b)
      b a))

(print (wiekszy 2 5))
(print (wiekszy 4 1))

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

(print (rozw 1 0 1))
(print (rozw 1 2 1))
(print (rozw 1 2 0))
(print (rozw 0 0 0))

(defun usun-liczby (L)
  (remove-if #'(lambda (X) (numberp)) L)

(print (usun-liczby '(4 x -4 y 2 z -2 t 3 -3))
