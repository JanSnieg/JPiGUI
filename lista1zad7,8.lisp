;ZADANIE 7
(defun wykres (f a b)
  (with-open-file (stream "/Users/jansnieg/Documents/ISSP6/JPiGUI/wykres.txt" :direction :output)
    (loop for i from a to b do
          (setq x i)
          (format stream "~D     ~F~C~C" x (eval f)#\return #\linefeed)
          )
   )
)

(wykres '(+ (sin x)) -10 10)


;ZADANIE 8
(defun df (f)
  (cond
   ((numberp f) 0)
   ((eq f 'x) 1)
   ((atom f) 0)
   (T (let ((op (car f)) (args (cdr f)) (u (third f)))
        (case op
          ('+ (cons op (mapcar #'df args)))
          ('- (cons op (mapcar #'df args)))
          ('* `(+ '(* ,(df (car args)), u) (* ,(car args) ,(df u))))
          ('/ `(/ (- (* ,(df (car args)), u) (* , (car args), (df u))), (expt u 2)))
          ('sin (cons 'cos args))
          )
        )
      )
   )
)

(print (df '(- x 3)))
(print (df '(* x 3)))
(print(df '(+ 2 (sin x))))