;; Auto-generated. Do not edit!


(when (boundp 'first_pkg::magnitude)
  (if (not (find-package "FIRST_PKG"))
    (make-package "FIRST_PKG"))
  (shadow 'magnitude (find-package "FIRST_PKG")))
(unless (find-package "FIRST_PKG::MAGNITUDE")
  (make-package "FIRST_PKG::MAGNITUDE"))
(unless (find-package "FIRST_PKG::MAGNITUDEREQUEST")
  (make-package "FIRST_PKG::MAGNITUDEREQUEST"))
(unless (find-package "FIRST_PKG::MAGNITUDERESPONSE")
  (make-package "FIRST_PKG::MAGNITUDERESPONSE"))

(in-package "ROS")





(defclass first_pkg::magnitudeRequest
  :super ros::object
  :slots (_komponenX _komponenY _komponenZ ))

(defmethod first_pkg::magnitudeRequest
  (:init
   (&key
    ((:komponenX __komponenX) 0.0)
    ((:komponenY __komponenY) 0.0)
    ((:komponenZ __komponenZ) 0.0)
    )
   (send-super :init)
   (setq _komponenX (float __komponenX))
   (setq _komponenY (float __komponenY))
   (setq _komponenZ (float __komponenZ))
   self)
  (:komponenX
   (&optional __komponenX)
   (if __komponenX (setq _komponenX __komponenX)) _komponenX)
  (:komponenY
   (&optional __komponenY)
   (if __komponenY (setq _komponenY __komponenY)) _komponenY)
  (:komponenZ
   (&optional __komponenZ)
   (if __komponenZ (setq _komponenZ __komponenZ)) _komponenZ)
  (:serialization-length
   ()
   (+
    ;; float64 _komponenX
    8
    ;; float64 _komponenY
    8
    ;; float64 _komponenZ
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _komponenX
       (sys::poke _komponenX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenY
       (sys::poke _komponenY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenZ
       (sys::poke _komponenZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _komponenX
     (setq _komponenX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenY
     (setq _komponenY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenZ
     (setq _komponenZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass first_pkg::magnitudeResponse
  :super ros::object
  :slots (_magnitude ))

(defmethod first_pkg::magnitudeResponse
  (:init
   (&key
    ((:magnitude __magnitude) 0.0)
    )
   (send-super :init)
   (setq _magnitude (float __magnitude))
   self)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:serialization-length
   ()
   (+
    ;; float64 _magnitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _magnitude
     (setq _magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass first_pkg::magnitude
  :super ros::object
  :slots ())

(setf (get first_pkg::magnitude :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get first_pkg::magnitude :datatype-) "first_pkg/magnitude")
(setf (get first_pkg::magnitude :request) first_pkg::magnitudeRequest)
(setf (get first_pkg::magnitude :response) first_pkg::magnitudeResponse)

(defmethod first_pkg::magnitudeRequest
  (:response () (instance first_pkg::magnitudeResponse :init)))

(setf (get first_pkg::magnitudeRequest :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get first_pkg::magnitudeRequest :datatype-) "first_pkg/magnitudeRequest")
(setf (get first_pkg::magnitudeRequest :definition-)
      "float64 komponenX
float64 komponenY
float64 komponenZ
---
float64 magnitude

")

(setf (get first_pkg::magnitudeResponse :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get first_pkg::magnitudeResponse :datatype-) "first_pkg/magnitudeResponse")
(setf (get first_pkg::magnitudeResponse :definition-)
      "float64 komponenX
float64 komponenY
float64 komponenZ
---
float64 magnitude

")



(provide :first_pkg/magnitude "55d1a215f43fd1f64eb105a505b172c4")


