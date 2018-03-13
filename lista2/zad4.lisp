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