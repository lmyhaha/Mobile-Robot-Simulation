;; Auto-generated. Do not edit!


(when (boundp 'sc_msgs::SetParamList)
  (if (not (find-package "SC_MSGS"))
    (make-package "SC_MSGS"))
  (shadow 'SetParamList (find-package "SC_MSGS")))
(unless (find-package "SC_MSGS::SETPARAMLIST")
  (make-package "SC_MSGS::SETPARAMLIST"))
(unless (find-package "SC_MSGS::SETPARAMLISTREQUEST")
  (make-package "SC_MSGS::SETPARAMLISTREQUEST"))
(unless (find-package "SC_MSGS::SETPARAMLISTRESPONSE")
  (make-package "SC_MSGS::SETPARAMLISTRESPONSE"))

(in-package "ROS")





(defclass sc_msgs::SetParamListRequest
  :super ros::object
  :slots (_param ))

(defmethod sc_msgs::SetParamListRequest
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

(defclass sc_msgs::SetParamListResponse
  :super ros::object
  :slots (_succ ))

(defmethod sc_msgs::SetParamListResponse
  (:init
   (&key
    ((:succ __succ) nil)
    )
   (send-super :init)
   (setq _succ __succ)
   self)
  (:succ
   (&optional __succ)
   (if __succ (setq _succ __succ)) _succ)
  (:serialization-length
   ()
   (+
    ;; bool _succ
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _succ
       (if _succ (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _succ
     (setq _succ (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sc_msgs::SetParamList
  :super ros::object
  :slots ())

(setf (get sc_msgs::SetParamList :md5sum-) "6452acbcabbd3d0394d0e8b1c714d527")
(setf (get sc_msgs::SetParamList :datatype-) "sc_msgs/SetParamList")
(setf (get sc_msgs::SetParamList :request) sc_msgs::SetParamListRequest)
(setf (get sc_msgs::SetParamList :response) sc_msgs::SetParamListResponse)

(defmethod sc_msgs::SetParamListRequest
  (:response () (instance sc_msgs::SetParamListResponse :init)))

(setf (get sc_msgs::SetParamListRequest :md5sum-) "6452acbcabbd3d0394d0e8b1c714d527")
(setf (get sc_msgs::SetParamListRequest :datatype-) "sc_msgs/SetParamListRequest")
(setf (get sc_msgs::SetParamListRequest :definition-)
      "sc_msgs/parameters param

================================================================================
MSG: sc_msgs/parameters
string[] param_name
float64[] values

---
bool succ

")

(setf (get sc_msgs::SetParamListResponse :md5sum-) "6452acbcabbd3d0394d0e8b1c714d527")
(setf (get sc_msgs::SetParamListResponse :datatype-) "sc_msgs/SetParamListResponse")
(setf (get sc_msgs::SetParamListResponse :definition-)
      "sc_msgs/parameters param

================================================================================
MSG: sc_msgs/parameters
string[] param_name
float64[] values

---
bool succ

")



(provide :sc_msgs/SetParamList "6452acbcabbd3d0394d0e8b1c714d527")


