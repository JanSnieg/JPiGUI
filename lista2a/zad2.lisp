(defmacro ++1(&rest numbers)
;(list 'setq (mapcar #'+1 (list + numbers 1)))
  (cons 'progn (mapcar (lambda (x) (list 'incf x)) numbers))
)

(print (macroexpand '(++1 x y z)))
(print (macroexpand '(++1 a)))