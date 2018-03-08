(defun uprosc (f)
  (prog (poly1)
        loop 
         (setq poly1 (simplify1 poly))
         (cond ((equal poly poly1)) 
               (return poly))
        (setq poly poly1)
        (go loop)))

(print uprosc('(+ x x x (* 3 x))))