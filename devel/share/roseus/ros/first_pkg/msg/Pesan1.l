;; Auto-generated. Do not edit!


(when (boundp 'first_pkg::Pesan1)
  (if (not (find-package "FIRST_PKG"))
    (make-package "FIRST_PKG"))
  (shadow 'Pesan1 (find-package "FIRST_PKG")))
(unless (find-package "FIRST_PKG::PESAN1")
  (make-package "FIRST_PKG::PESAN1"))

(in-package "ROS")
;;//! \htmlinclude Pesan1.msg.html


(defclass first_pkg::Pesan1
  :super ros::object
  :slots (_usia _tinggi _nama _kehadiran ))

(defmethod first_pkg::Pesan1
  (:init
   (&key
    ((:usia __usia) 0)
    ((:tinggi __tinggi) 0.0)
    ((:nama __nama) "")
    ((:kehadiran __kehadiran) nil)
    )
   (send-super :init)
   (setq _usia (round __usia))
   (setq _tinggi (float __tinggi))
   (setq _nama (string __nama))
   (setq _kehadiran __kehadiran)
   self)
  (:usia
   (&optional __usia)
   (if __usia (setq _usia __usia)) _usia)
  (:tinggi
   (&optional __tinggi)
   (if __tinggi (setq _tinggi __tinggi)) _tinggi)
  (:nama
   (&optional __nama)
   (if __nama (setq _nama __nama)) _nama)
  (:kehadiran
   (&optional (__kehadiran :null))
   (if (not (eq __kehadiran :null)) (setq _kehadiran __kehadiran)) _kehadiran)
  (:serialization-length
   ()
   (+
    ;; int64 _usia
    8
    ;; float64 _tinggi
    8
    ;; string _nama
    4 (length _nama)
    ;; bool _kehadiran
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _usia
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _usia (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _usia) (= (length (_usia . bv)) 2)) ;; bignum
              (write-long (ash (elt (_usia . bv) 0) 0) s)
              (write-long (ash (elt (_usia . bv) 1) -1) s))
             ((and (class _usia) (= (length (_usia . bv)) 1)) ;; big1
              (write-long (elt (_usia . bv) 0) s)
              (write-long (if (>= _usia 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _usia s)(write-long (if (>= _usia 0) 0 #xffffffff) s)))
     ;; float64 _tinggi
       (sys::poke _tinggi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _nama
       (write-long (length _nama) s) (princ _nama s)
     ;; bool _kehadiran
       (if _kehadiran (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _usia
#+(or :alpha :irix6 :x86_64)
      (setf _usia (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _usia (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _tinggi
     (setq _tinggi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _nama
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nama (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _kehadiran
     (setq _kehadiran (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get first_pkg::Pesan1 :md5sum-) "5ad8335939c8d987f5e0189e0ca2b800")
(setf (get first_pkg::Pesan1 :datatype-) "first_pkg/Pesan1")
(setf (get first_pkg::Pesan1 :definition-)
      "int64 usia
float64 tinggi
string nama
bool kehadiran
")



(provide :first_pkg/Pesan1 "5ad8335939c8d987f5e0189e0ca2b800")


