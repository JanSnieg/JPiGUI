(defmacro plus (&rest numbers)
  `(+ ,@numbers)
;(cons '*numbers)
)

(print(macroexpand '(plus 1 2 3 4 x)))
(print (plus -1 3 4 5))