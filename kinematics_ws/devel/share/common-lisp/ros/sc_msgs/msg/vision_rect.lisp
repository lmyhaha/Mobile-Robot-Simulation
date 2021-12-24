; Auto-generated. Do not edit!


(cl:in-package sc_msgs-msg)


;//! \htmlinclude vision_rect.msg.html

(cl:defclass <vision_rect> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (topleft_x
    :reader topleft_x
    :initarg :topleft_x
    :type cl:fixnum
    :initform 0)
   (topleft_y
    :reader topleft_y
    :initarg :topleft_y
    :type cl:fixnum
    :initform 0)
   (bottomright_x
    :reader bottomright_x
    :initarg :bottomright_x
    :type cl:fixnum
    :initform 0)
   (bottomright_y
    :reader bottomright_y
    :initarg :bottomright_y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass vision_rect (<vision_rect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vision_rect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vision_rect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sc_msgs-msg:<vision_rect> is deprecated: use sc_msgs-msg:vision_rect instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <vision_rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:header-val is deprecated.  Use sc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'topleft_x-val :lambda-list '(m))
(cl:defmethod topleft_x-val ((m <vision_rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:topleft_x-val is deprecated.  Use sc_msgs-msg:topleft_x instead.")
  (topleft_x m))

(cl:ensure-generic-function 'topleft_y-val :lambda-list '(m))
(cl:defmethod topleft_y-val ((m <vision_rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:topleft_y-val is deprecated.  Use sc_msgs-msg:topleft_y instead.")
  (topleft_y m))

(cl:ensure-generic-function 'bottomright_x-val :lambda-list '(m))
(cl:defmethod bottomright_x-val ((m <vision_rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:bottomright_x-val is deprecated.  Use sc_msgs-msg:bottomright_x instead.")
  (bottomright_x m))

(cl:ensure-generic-function 'bottomright_y-val :lambda-list '(m))
(cl:defmethod bottomright_y-val ((m <vision_rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-msg:bottomright_y-val is deprecated.  Use sc_msgs-msg:bottomright_y instead.")
  (bottomright_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vision_rect>) ostream)
  "Serializes a message object of type '<vision_rect>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'topleft_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'topleft_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bottomright_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bottomright_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vision_rect>) istream)
  "Deserializes a message object of type '<vision_rect>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topleft_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topleft_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bottomright_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bottomright_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vision_rect>)))
  "Returns string type for a message object of type '<vision_rect>"
  "sc_msgs/vision_rect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vision_rect)))
  "Returns string type for a message object of type 'vision_rect"
  "sc_msgs/vision_rect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vision_rect>)))
  "Returns md5sum for a message object of type '<vision_rect>"
  "d08a8c46c56e7512e9950c75e9513e0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vision_rect)))
  "Returns md5sum for a message object of type 'vision_rect"
  "d08a8c46c56e7512e9950c75e9513e0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vision_rect>)))
  "Returns full string definition for message of type '<vision_rect>"
  (cl:format cl:nil "std_msgs/Header header~%int16 topleft_x~%int16 topleft_y~%int16 bottomright_x~%int16 bottomright_y~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vision_rect)))
  "Returns full string definition for message of type 'vision_rect"
  (cl:format cl:nil "std_msgs/Header header~%int16 topleft_x~%int16 topleft_y~%int16 bottomright_x~%int16 bottomright_y~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vision_rect>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vision_rect>))
  "Converts a ROS message object to a list"
  (cl:list 'vision_rect
    (cl:cons ':header (header msg))
    (cl:cons ':topleft_x (topleft_x msg))
    (cl:cons ':topleft_y (topleft_y msg))
    (cl:cons ':bottomright_x (bottomright_x msg))
    (cl:cons ':bottomright_y (bottomright_y msg))
))
