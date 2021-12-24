; Auto-generated. Do not edit!


(cl:in-package sc_msgs-srv)


;//! \htmlinclude SetParamList-request.msg.html

(cl:defclass <SetParamList-request> (roslisp-msg-protocol:ros-message)
  ((param
    :reader param
    :initarg :param
    :type sc_msgs-msg:parameters
    :initform (cl:make-instance 'sc_msgs-msg:parameters)))
)

(cl:defclass SetParamList-request (<SetParamList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParamList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParamList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sc_msgs-srv:<SetParamList-request> is deprecated: use sc_msgs-srv:SetParamList-request instead.")))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <SetParamList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-srv:param-val is deprecated.  Use sc_msgs-srv:param instead.")
  (param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParamList-request>) ostream)
  "Serializes a message object of type '<SetParamList-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'param) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParamList-request>) istream)
  "Deserializes a message object of type '<SetParamList-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'param) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParamList-request>)))
  "Returns string type for a service object of type '<SetParamList-request>"
  "sc_msgs/SetParamListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParamList-request)))
  "Returns string type for a service object of type 'SetParamList-request"
  "sc_msgs/SetParamListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParamList-request>)))
  "Returns md5sum for a message object of type '<SetParamList-request>"
  "6452acbcabbd3d0394d0e8b1c714d527")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParamList-request)))
  "Returns md5sum for a message object of type 'SetParamList-request"
  "6452acbcabbd3d0394d0e8b1c714d527")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParamList-request>)))
  "Returns full string definition for message of type '<SetParamList-request>"
  (cl:format cl:nil "sc_msgs/parameters param~%~%================================================================================~%MSG: sc_msgs/parameters~%string[] param_name~%float64[] values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParamList-request)))
  "Returns full string definition for message of type 'SetParamList-request"
  (cl:format cl:nil "sc_msgs/parameters param~%~%================================================================================~%MSG: sc_msgs/parameters~%string[] param_name~%float64[] values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParamList-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'param))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParamList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParamList-request
    (cl:cons ':param (param msg))
))
;//! \htmlinclude SetParamList-response.msg.html

(cl:defclass <SetParamList-response> (roslisp-msg-protocol:ros-message)
  ((succ
    :reader succ
    :initarg :succ
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetParamList-response (<SetParamList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParamList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParamList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sc_msgs-srv:<SetParamList-response> is deprecated: use sc_msgs-srv:SetParamList-response instead.")))

(cl:ensure-generic-function 'succ-val :lambda-list '(m))
(cl:defmethod succ-val ((m <SetParamList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sc_msgs-srv:succ-val is deprecated.  Use sc_msgs-srv:succ instead.")
  (succ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParamList-response>) ostream)
  "Serializes a message object of type '<SetParamList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'succ) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParamList-response>) istream)
  "Deserializes a message object of type '<SetParamList-response>"
    (cl:setf (cl:slot-value msg 'succ) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParamList-response>)))
  "Returns string type for a service object of type '<SetParamList-response>"
  "sc_msgs/SetParamListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParamList-response)))
  "Returns string type for a service object of type 'SetParamList-response"
  "sc_msgs/SetParamListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParamList-response>)))
  "Returns md5sum for a message object of type '<SetParamList-response>"
  "6452acbcabbd3d0394d0e8b1c714d527")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParamList-response)))
  "Returns md5sum for a message object of type 'SetParamList-response"
  "6452acbcabbd3d0394d0e8b1c714d527")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParamList-response>)))
  "Returns full string definition for message of type '<SetParamList-response>"
  (cl:format cl:nil "bool succ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParamList-response)))
  "Returns full string definition for message of type 'SetParamList-response"
  (cl:format cl:nil "bool succ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParamList-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParamList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParamList-response
    (cl:cons ':succ (succ msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetParamList)))
  'SetParamList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetParamList)))
  'SetParamList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParamList)))
  "Returns string type for a service object of type '<SetParamList>"
  "sc_msgs/SetParamList")