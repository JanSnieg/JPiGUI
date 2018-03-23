(defclass punkt ()
  ((x :accessor x :initarg :x :initform 0)
   (y :accessor y :initarg :y :initform 0))
)

(defclass kolo (punkt)
  ((r :accessor r :initarg :r :initform 1))
)
(defclass prostokat (punkt)
  ((a :accessor a :initarg :a :initform 2)
   (b :accessor b :initarg :b :initform 2))
)

(defgeneric pole (obj))
(defmethod pole ((obj punkt))
  0
)

(defmethod pole ((obj kolo))
   (* pi (r obj)(r obj))
 )
 
(defmethod pole ((obj prostokat))
   (* (a obj) (b obj))
)

(defgeneric odl (a b))
 
(defmethod odl ((a punkt)(b punkt)) ;punkt od punktu
  (sqrt (+ (expt (- (x a) (x b)) 2) (expt (- (y a) (y b)) 2)))
)

(defmethod odl ((a kolo)(b kolo)) ;kolo od kola
  (max (- (sqrt (+ (expt (- (x a) (x b)) 2) (expt (- (y a) (y b)) 2))) (r a) (r b)) 0)
)

(defmethod odl((a kolo)(p punkt)) ;kolo od punku
  (max (- (sqrt (+ (expt (- (x a) (x p)) 2) (expt (- (y a) (y p)) 2))) (r a)) 0)
)

(defmethod odl((p punkt)(a kolo)) ;punkt od kola
  (odl a p)
)

(defmethod odl ((p1 prostokat)(p2 prostokat)) ;prostokat od prostokata
  (let (dx dy)
    (setq dx (max (-(abs (-(x p1)(x p2))) (/ (+ (a p1)(a p2)) 2)) 0))
    (setq dy (max (-(abs (-(y p1)(y p2))) (/ (+ (b p1)(b p2)) 2)) 0))
    (sqrt (+ (* dx dx) (* dy dy)))
    )
)

(defmethod odl ((p1 prostokat)(p punkt)) ;prostokat od punktu
  (let (dx dy)
    (setq dx (max (-(abs (-(x p1)(x p))) (/ (a p1) 2)) 0))
    (setq dy (max (-(abs (-(y p1)(y p))) (/ (b p1) 2)) 0))
    (sqrt (+ (* dx dx) (* dy dy)))
    )
)
(defmethod odl ((p punkt)(p1 prostokat)) ;punkt od prostokata
  (odl p1 p)
)

(defmethod odl ((p prostokat)(k kolo)) ;prostokat od kola
  (let (dx dy)
    (setq dx (max (-(abs (-(x p)(x k))) (/ (a p) 2) 0)))
    (setq dy (max (-(abs (-(y p)(y k))) (/ (b p) 2) 0)))
    (sqrt (+ (* dx dx) (* dy dy)))
    )
)

(defmethod odl ((k kolo)(p prostokat)) ;kolo od prostokata
  (odl p k)
)
 
(format t "~%")
(format t "Zadanie 4~%~%")

(setf p (make-instance 'punkt :x 7 :y 9))
(format t "Punkt (x,y): ")
(print (x p))
(print (y p))
(setf p1 (make-instance 'punkt :x 1 :y 2))
(format t "Punkt1 (x,y): ")
(print (x p1))
(print (y p1))

(setf k1 (make-instance 'kolo :r 10))
(setf k2 (make-instance 'kolo :x 10 :y 12 :r 10))
(format t "~%Kolo (x,y,r): ")
(print (x k1))
(print (y k1))
(print (r k1))

(setf pr (make-instance 'prostokat :x 15 :y 6 :a 20 :b 8))
(setf pr1 (make-instance 'prostokat :x 15 :y 6 :a 20 :b 8))
(format t "~%Prostokat (x,y,a,b): ")
(print (x pr))
(print (y pr))
(print (a pr))
(print (b pr))

(format t "~%Pole (punkt, kolo, prostokat): ")
(print (pole p))
(print (pole k1))
(print (pole pr))

(format t "~%Odleglosci (punkt i punkt), (kolo, kolo), (prostokat, prostokat), (prostokat, punkt), (kolo, punkt), (kolo, prostokat): ")
(print (odl p p1))
(print (odl k1 k2))
(print (odl pr pr1))
(print (odl pr p))
(print (odl p pr))
(print (odl k1 p))
(print (odl k1 pr))


