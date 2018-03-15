(defun above (n)
  (lambda (x) (if (< x n)  x))
)
(setq x 18)
(print (above 3))
(print (above 20))


(defun dzielnik (n)
  (lambda (x)
    (loop while (not (eq x n))
          do (if (> x n) (setq x (- x n)) (setq n (- n x)))
          )
    (setq result x))
)

(setq x (list 3 5 8 4 12))
(setq y (list 330 53 82 42 112))

(setq wynik-above (mapcar (above 5) x))
(setq wynik-dzielnik (mapcar (dzielnik 540) y))
(print wynik-above)
(print wynik-dzielnik)
