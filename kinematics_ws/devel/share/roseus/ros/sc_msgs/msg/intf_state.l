;; Auto-generated. Do not edit!


(when (boundp 'sc_msgs::intf_state)
  (if (not (find-package "SC_MSGS"))
    (make-package "SC_MSGS"))
  (shadow 'intf_state (find-package "SC_MSGS")))
(unless (find-package "SC_MSGS::INTF_STATE")
  (make-package "SC_MSGS::INTF_STATE"))

(in-package "ROS")
;;//! \htmlinclude intf_state.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sc_msgs::intf_state
  :super ros::object
  :slots (_header _robot_intf _robot_mode ))

(defmethod sc_msgs::intf_state
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_intf __robot_intf) 0)
    ((:robot_mode __robot_mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_intf (round __robot_intf))
   (setq _robot_mode (round __robot_mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_intf
   (&optional __robot_intf)
   (if __robot_intf (setq _robot_intf __robot_intf)) _robot_intf)
  (:robot_mode
   (&optional __robot_mode)
   (if __robot_mode (setq _robot_mode __robot_mode)) _robot_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _robot_intf
    2
    ;; int16 _robot_mode
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _robot_intf
       (write-word _robot_intf s)
     ;; int16 _robot_mode
       (write-word _robot_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _robot_intf
     (setq _robot_intf (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _robot_mode
     (setq _robot_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sc_msgs::intf_state :md5sum-) "f00fa51e0e74a8156cb6c993cda0ce31")
(setf (get sc_msgs::intf_state :datatype-) "sc_msgs/intf_state")
(setf (get sc_msgs::intf_state :definition-)
      "std_msgs/Header header
int16 robot_intf
int16 robot_mode

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



(provide :sc_msgs/intf_state "f00fa51e0e74a8156cb6c993cda0ce31")


