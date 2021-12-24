; Auto-generated. Do not edit!


(cl:in-package sc_msgs-msg)


;//! \htmlinclude intf_state.msg.html

(cl:defclass <intf_state> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_intf
    :reader robot_intf
    :initarg :robot_intf
    :type cl:fixnum
    :initform 0)
   (robot_mode
    :reader robot_mode
    :initarg :robot_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass intf_state (<intf_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <intf_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'intf_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sc_msgs-msg:<intf_state> is deprecated: use sc_msgs-msg:intf_state instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <intf_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:header-val is deprecated.  Use sc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_intf-val :lambda-list '(m))
(cl:defmethod robot_intf-val ((m <intf_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:robot_intf-val is deprecated.  Use sc_msgs-msg:robot_intf instead.")
  (robot_intf m))

(cl:ensure-generic-function 'robot_mode-val :lambda-list '(m))
(cl:defmethod robot_mode-val ((m <intf_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:robot_mode-val is deprecated.  Use sc_msgs-msg:robot_mode instead.")
  (robot_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <intf_state>) ostream)
  "Serializes a message object of type '<intf_state>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'robot_intf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <intf_state>) istream)
  "Deserializes a message object of type '<intf_state>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_intf) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<intf_state>)))
  "Returns string type for a message object of type '<intf_state>"
  "sc_msgs/intf_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'intf_state)))
  "Returns string type for a message object of type 'intf_state"
  "sc_msgs/intf_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<intf_state>)))
  "Returns md5sum for a message object of type '<intf_state>"
  "f00fa51e0e74a8156cb6c993cda0ce31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'intf_state)))
  "Returns md5sum for a message object of type 'intf_state"
  "f00fa51e0e74a8156cb6c993cda0ce31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<intf_state>)))
  "Returns full string definition for message of type '<intf_state>"
  (cl:format cl:nil "std_msgs/Header header~%int16 robot_intf~%int16 robot_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'intf_state)))
  "Returns full string definition for message of type 'intf_state"
  (cl:format cl:nil "std_msgs/Header header~%int16 robot_intf~%int16 robot_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <intf_state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <intf_state>))
  "Converts a ROS message object to a list"
  (cl:list 'intf_state
    (cl:cons ':header (header msg))
    (cl:cons ':robot_intf (robot_intf msg))
    (cl:cons ':robot_mode (robot_mode msg))
))
