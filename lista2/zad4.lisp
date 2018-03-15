(defclass punkt ()
  ((x :accessor punkt-x)
   (y :accessor punkt-y))
)

(defclass kolo(punkt)
  ((r :accessor kolo-r))
)
(defclass prostokat (punkt)
  ((a :accessor prostokat-a)
   (b :accessor prostokat-b))
)

(defgeneric pole (obj))

(defmethod pole ((obj kolo))
   (* pi (expt (kolo-r obj) 2))
 )
 
(defmethod pole ((obj prostokat))
   (* (prostokat-a obj) (prostokat-b obj))
)

(defgeneric odl (punkt-a punkt-b))
 
(defmethod odl ((prostokat-a punkt)(prostokat-b punkt))
  (sqrt (+ (expt (- (punkt-x prostokat-a) (punkt-x prostokat-b)) 2) (expt (- (punkt-y prostokat-a) (punkt-y prostokat-b)) 2)))
)
 
(format t "~%")
(format t "Zadanie 4~%~%")

(setf p (make-instance 'punkt))
(setf (punkt-x p) 12)
(setf (punkt-y p) 5)
 

(setf k1 (make-instance 'kolo))
(setf (punkt-x k1) 12)
(setf (punkt-y k1) 5)
(setf (kolo-r k1) 10)

(setf pr (make-instance 'prostokat))
(setf (punkt-x pr) 0)
(setf (punkt-y pr) 0)
(setf (prostokat-a pr) 5)
(setf (prostokat-b pr) 12)

(format t "Punkt (x,y): ")
(print (punkt-x p))
(print (punkt-y p))
   
(format t "~%Kolo (x,y,r): ")
(print (punkt-x k))
(print (punkt-y k))
(print (kolo-r k))

(format t "~%Prostokat (x,y,a,b): ")
(print (punkt-x pr))
(print (punkt-y pr))
(print (prostokat-a pr))
(print (prostokat-b pr))

(format t "~%Pole (kolo, prostokat): ")
(print (pole k))
(print (pole pr))

(format t "~%Odleglosci (kolo i prostokat), (kolo i punkt): ")
(print (odl k pr))
(print (odl k p))



