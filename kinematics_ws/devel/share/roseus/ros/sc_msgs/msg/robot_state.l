;; Auto-generated. Do not edit!


(when (boundp 'sc_msgs::robot_state)
  (if (not (find-package "SC_MSGS"))
    (make-package "SC_MSGS"))
  (shadow 'robot_state (find-package "SC_MSGS")))
(unless (find-package "SC_MSGS::ROBOT_STATE")
  (make-package "SC_MSGS::ROBOT_STATE"))

(in-package "ROS")
;;//! \htmlinclude robot_state.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sc_msgs::robot_state
  :super ros::object
  :slots (_header _system_time _cpu_temperature _cpu_usage _battery_voltage ))

(defmethod sc_msgs::robot_state
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:system_time __system_time) 0.0)
    ((:cpu_temperature __cpu_temperature) 0.0)
    ((:cpu_usage __cpu_usage) 0.0)
    ((:battery_voltage __battery_voltage) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _system_time (float __system_time))
   (setq _cpu_temperature (float __cpu_temperature))
   (setq _cpu_usage (float __cpu_usage))
   (setq _battery_voltage (float __battery_voltage))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:system_time
   (&optional __system_time)
   (if __system_time (setq _system_time __system_time)) _system_time)
  (:cpu_temperature
   (&optional __cpu_temperature)
   (if __cpu_temperature (setq _cpu_temperature __cpu_temperature)) _cpu_temperature)
  (:cpu_usage
   (&optional __cpu_usage)
   (if __cpu_usage (setq _cpu_usage __cpu_usage)) _cpu_usage)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _system_time
    8
    ;; float64 _cpu_temperature
    8
    ;; float64 _cpu_usage
    8
    ;; float64 _battery_voltage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _system_time
       (sys::poke _system_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cpu_temperature
       (sys::poke _cpu_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cpu_usage
       (sys::poke _cpu_usage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _system_time
     (setq _system_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cpu_temperature
     (setq _cpu_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cpu_usage
     (setq _cpu_usage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sc_msgs::robot_state :md5sum-) "27b5aae4f913dc2a48ec86b4edb661a3")
(setf (get sc_msgs::robot_state :datatype-) "sc_msgs/robot_state")
(setf (get sc_msgs::robot_state :definition-)
      "std_msgs/Header header
float64  system_time
float64  cpu_temperature
float64  cpu_usage
float64  battery_voltage

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



(provide :sc_msgs/robot_state "27b5aae4f913dc2a48ec86b4edb661a3")


