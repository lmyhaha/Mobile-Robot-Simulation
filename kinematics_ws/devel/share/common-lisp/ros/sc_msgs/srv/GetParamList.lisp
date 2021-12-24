; Auto-generated. Do not edit!


(cl:in-package sc_msgs-srv)


;//! \htmlinclude GetParamList-request.msg.html

(cl:defclass <GetParamList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetParamList-request (<GetParamList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParamList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParamList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sc_msgs-srv:<GetParamList-request> is deprecated: use sc_msgs-srv:GetParamList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParamList-request>) ostream)
  "Serializes a message object of type '<GetParamList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParamList-request>) istream)
  "Deserializes a message object of type '<GetParamList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParamList-request>)))
  "Returns string type for a service object of type '<GetParamList-request>"
  "sc_msgs/GetParamListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParamList-request)))
  "Returns string type for a service object of type 'GetParamList-request"
  "sc_msgs/GetParamListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParamList-request>)))
  "Returns md5sum for a message object of type '<GetParamList-request>"
  "1dbbb9344d5148e4dc17b3b0135d5f58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParamList-request)))
  "Returns md5sum for a message object of type 'GetParamList-request"
  "1dbbb9344d5148e4dc17b3b0135d5f58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParamList-request>)))
  "Returns full string definition for message of type '<GetParamList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParamList-request)))
  "Returns full string definition for message of type 'GetParamList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParamList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParamList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParamList-request
))
;//! \htmlinclude GetParamList-response.msg.html

(cl:defclass <GetParamList-response> (roslisp-msg-protocol:ros-message)
  ((param
    :reader param
    :initarg :param
    :type sc_msgs-msg:parameters
    :initform (cl:make-instance 'sc_msgs-msg:parameters)))
)

(cl:defclass GetParamList-response (<GetParamList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParamList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParamList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sc_msgs-srv:<GetParamList-response> is deprecated: use sc_msgs-srv:GetParamList-response instead.")))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <GetParamList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-srv:param-val is deprecated.  Use sc_msgs-srv:param instead.")
  (param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParamList-response>) ostream)
  "Serializes a message object of type '<GetParamList-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'param) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParamList-response>) istream)
  "Deserializes a message object of type '<GetParamList-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'param) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParamList-response>)))
  "Returns string type for a service object of type '<GetParamList-response>"
  "sc_msgs/GetParamListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParamList-response)))
  "Returns string type for a service object of type 'GetParamList-response"
  "sc_msgs/GetParamListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParamList-response>)))
  "Returns md5sum for a message object of type '<GetParamList-response>"
  "1dbbb9344d5148e4dc17b3b0135d5f58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParamList-response)))
  "Returns md5sum for a message object of type 'GetParamList-response"
  "1dbbb9344d5148e4dc17b3b0135d5f58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParamList-response>)))
  "Returns full string definition for message of type '<GetParamList-response>"
  (cl:format cl:nil "sc_msgs/parameters param~%~%~%================================================================================~%MSG: sc_msgs/parameters~%string[] param_name~%float64[] values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParamList-response)))
  "Returns full string definition for message of type 'GetParamList-response"
  (cl:format cl:nil "sc_msgs/parameters param~%~%~%================================================================================~%MSG: sc_msgs/parameters~%string[] param_name~%float64[] values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParamList-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'param))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParamList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParamList-response
    (cl:cons ':param (param msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetParamList)))
  'GetParamList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetParamList)))
  'GetParamList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParamList)))
  "Returns string type for a service object of type '<GetParamList>"
  "sc_msgs/GetParamList")