;; Auto-generated. Do not edit!


(when (boundp 'sc_msgs::parameters)
  (if (not (find-package "SC_MSGS"))
    (make-package "SC_MSGS"))
  (shadow 'parameters (find-package "SC_MSGS")))
(unless (find-package "SC_MSGS::PARAMETERS")
  (make-package "SC_MSGS::PARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude parameters.msg.html


(defclass sc_msgs::parameters
  :super ros::object
  :slots (_param_name _values ))

(defmethod sc_msgs::parameters
  (:init
   (&key
    ((:param_name __param_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _param_name __param_name)
   (setq _values __values)
   self)
  (:param_name
   (&optional __param_name)
   (if __param_name (setq _param_name __param_name)) _param_name)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string[] _param_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _param_name)) 4
    ;; float64[] _values
    (* 8    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _param_name
     (write-long (length _param_name) s)
     (dolist (elem _param_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _param_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _param_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _param_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get sc_msgs::parameters :md5sum-) "8796a60c7639dcd20659eaeb24d59fb3")
(setf (get sc_msgs::parameters :datatype-) "sc_msgs/parameters")
(setf (get sc_msgs::parameters :definition-)
      "string[] param_name
float64[] values


")



(provide :sc_msgs/parameters "8796a60c7639dcd20659eaeb24d59fb3")


