;; Auto-generated. Do not edit!


(when (boundp 'sc_msgs::GetParamList)
  (if (not (find-package "SC_MSGS"))
    (make-package "SC_MSGS"))
  (shadow 'GetParamList (find-package "SC_MSGS")))
(unless (find-package "SC_MSGS::GETPARAMLIST")
  (make-package "SC_MSGS::GETPARAMLIST"))
(unless (find-package "SC_MSGS::GETPARAMLISTREQUEST")
  (make-package "SC_MSGS::GETPARAMLISTREQUEST"))
(unless (find-package "SC_MSGS::GETPARAMLISTRESPONSE")
  (make-package "SC_MSGS::GETPARAMLISTRESPONSE"))

(in-package "ROS")





(defclass sc_msgs::GetParamListRequest
  :super ros::object
  :slots ())

(defmethod sc_msgs::GetParamListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sc_msgs::GetParamListResponse
  :super ros::object
  :slots (_param ))

(defmethod sc_msgs::GetParamListResponse
  (:init
   (&key
    ((:param __param) (instance sc_msgs::parameters :init))
    )
   (send-super :init)
   (setq _param __param)
   self)
  (:param
   (&rest __param)
   (if (keywordp (car __param))
       (send* _param __param)
     (progn
       (if __param (setq _param (car __param)))
       _param)))
  (:serialization-length
   ()
   (+
    ;; sc_msgs/parameters _param
    (send _param :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sc_msgs/parameters _param
       (send _param :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sc_msgs/parameters _param
     (send _param :deserialize buf ptr-) (incf ptr- (send _param :serialization-length))
   ;;
   self)
  )

(defclass sc_msgs::GetParamList
  :super ros::object
  :slots ())

(setf (get sc_msgs::GetParamList :md5sum-) "1dbbb9344d5148e4dc17b3b0135d5f58")
(setf (get sc_msgs::GetParamList :datatype-) "sc_msgs/GetParamList")
(setf (get sc_msgs::GetParamList :request) sc_msgs::GetParamListRequest)
(setf (get sc_msgs::GetParamList :response) sc_msgs::GetParamListResponse)

(defmethod sc_msgs::GetParamListRequest
  (:response () (instance sc_msgs::GetParamListResponse :init)))

(setf (get sc_msgs::GetParamListRequest :md5sum-) "1dbbb9344d5148e4dc17b3b0135d5f58")
(setf (get sc_msgs::GetParamListRequest :datatype-) "sc_msgs/GetParamListRequest")
(setf (get sc_msgs::GetParamListRequest :definition-)
      "---
sc_msgs/parameters param


================================================================================
MSG: sc_msgs/parameters
string[] param_name
float64[] values

")

(setf (get sc_msgs::GetParamListResponse :md5sum-) "1dbbb9344d5148e4dc17b3b0135d5f58")
(setf (get sc_msgs::GetParamListResponse :datatype-) "sc_msgs/GetParamListResponse")
(setf (get sc_msgs::GetParamListResponse :definition-)
      "---
sc_msgs/parameters param


================================================================================
MSG: sc_msgs/parameters
string[] param_name
float64[] values

")



(provide :sc_msgs/GetParamList "1dbbb9344d5148e4dc17b3b0135d5f58")


