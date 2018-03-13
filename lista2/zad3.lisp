(defmacro kwadratuj(&rest args)
	(cons 'progn (mapcar (lambda (x) `(setf ,x (* ,x ,x))) args))
)

(setq x 10)
(setq y 11)
(setq z 12)

(print (macroexpand '(kwadratuj x y)))
;(print (zwieksz2 x y z))