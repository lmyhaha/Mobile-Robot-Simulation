;; Auto-generated. Do not edit!


(when (boundp 'sc_msgs::vision_rect)
  (if (not (find-package "SC_MSGS"))
    (make-package "SC_MSGS"))
  (shadow 'vision_rect (find-package "SC_MSGS")))
(unless (find-package "SC_MSGS::VISION_RECT")
  (make-package "SC_MSGS::VISION_RECT"))

(in-package "ROS")
;;//! \htmlinclude vision_rect.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sc_msgs::vision_rect
  :super ros::object
  :slots (_header _topleft_x _topleft_y _bottomright_x _bottomright_y ))

(defmethod sc_msgs::vision_rect
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:topleft_x __topleft_x) 0)
    ((:topleft_y __topleft_y) 0)
    ((:bottomright_x __bottomright_x) 0)
    ((:bottomright_y __bottomright_y) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _topleft_x (round __topleft_x))
   (setq _topleft_y (round __topleft_y))
   (setq _bottomright_x (round __bottomright_x))
   (setq _bottomright_y (round __bottomright_y))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:topleft_x
   (&optional __topleft_x)
   (if __topleft_x (setq _topleft_x __topleft_x)) _topleft_x)
  (:topleft_y
   (&optional __topleft_y)
   (if __topleft_y (setq _topleft_y __topleft_y)) _topleft_y)
  (:bottomright_x
   (&optional __bottomright_x)
   (if __bottomright_x (setq _bottomright_x __bottomright_x)) _bottomright_x)
  (:bottomright_y
   (&optional __bottomright_y)
   (if __bottomright_y (setq _bottomright_y __bottomright_y)) _bottomright_y)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _topleft_x
    2
    ;; int16 _topleft_y
    2
    ;; int16 _bottomright_x
    2
    ;; int16 _bottomright_y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _topleft_x
       (write-word _topleft_x s)
     ;; int16 _topleft_y
       (write-word _topleft_y s)
     ;; int16 _bottomright_x
       (write-word _bottomright_x s)
     ;; int16 _bottomright_y
       (write-word _bottomright_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _topleft_x
     (setq _topleft_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _topleft_y
     (setq _topleft_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bottomright_x
     (setq _bottomright_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bottomright_y
     (setq _bottomright_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sc_msgs::vision_rect :md5sum-) "d08a8c46c56e7512e9950c75e9513e0c")
(setf (get sc_msgs::vision_rect :datatype-) "sc_msgs/vision_rect")
(setf (get sc_msgs::vision_rect :definition-)
      "std_msgs/Header header
int16 topleft_x
int16 topleft_y
int16 bottomright_x
int16 bottomright_y

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :sc_msgs/vision_rect "d08a8c46c56e7512e9950c75e9513e0c")


