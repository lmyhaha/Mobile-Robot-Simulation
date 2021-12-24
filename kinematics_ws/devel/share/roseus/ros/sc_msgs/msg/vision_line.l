;; Auto-generated. Do not edit!


(when (boundp 'sc_msgs::vision_line)
  (if (not (find-package "SC_MSGS"))
    (make-package "SC_MSGS"))
  (shadow 'vision_line (find-package "SC_MSGS")))
(unless (find-package "SC_MSGS::VISION_LINE")
  (make-package "SC_MSGS::VISION_LINE"))

(in-package "ROS")
;;//! \htmlinclude vision_line.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sc_msgs::vision_line
  :super ros::object
  :slots (_header _translate_x _translate_y _rotate_x _rotate_y ))

(defmethod sc_msgs::vision_line
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:translate_x __translate_x) 0)
    ((:translate_y __translate_y) 0)
    ((:rotate_x __rotate_x) 0)
    ((:rotate_y __rotate_y) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _translate_x (round __translate_x))
   (setq _translate_y (round __translate_y))
   (setq _rotate_x (round __rotate_x))
   (setq _rotate_y (round __rotate_y))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:translate_x
   (&optional __translate_x)
   (if __translate_x (setq _translate_x __translate_x)) _translate_x)
  (:translate_y
   (&optional __translate_y)
   (if __translate_y (setq _translate_y __translate_y)) _translate_y)
  (:rotate_x
   (&optional __rotate_x)
   (if __rotate_x (setq _rotate_x __rotate_x)) _rotate_x)
  (:rotate_y
   (&optional __rotate_y)
   (if __rotate_y (setq _rotate_y __rotate_y)) _rotate_y)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _translate_x
    8
    ;; int64 _translate_y
    8
    ;; int64 _rotate_x
    8
    ;; int64 _rotate_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _translate_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _translate_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _translate_x) (= (length (_translate_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_translate_x . bv) 0) 0) s)
              (write-long (ash (elt (_translate_x . bv) 1) -1) s))
             ((and (class _translate_x) (= (length (_translate_x . bv)) 1)) ;; big1
              (write-long (elt (_translate_x . bv) 0) s)
              (write-long (if (>= _translate_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _translate_x s)(write-long (if (>= _translate_x 0) 0 #xffffffff) s)))
     ;; int64 _translate_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _translate_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _translate_y) (= (length (_translate_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_translate_y . bv) 0) 0) s)
              (write-long (ash (elt (_translate_y . bv) 1) -1) s))
             ((and (class _translate_y) (= (length (_translate_y . bv)) 1)) ;; big1
              (write-long (elt (_translate_y . bv) 0) s)
              (write-long (if (>= _translate_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _translate_y s)(write-long (if (>= _translate_y 0) 0 #xffffffff) s)))
     ;; int64 _rotate_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rotate_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rotate_x) (= (length (_rotate_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rotate_x . bv) 0) 0) s)
              (write-long (ash (elt (_rotate_x . bv) 1) -1) s))
             ((and (class _rotate_x) (= (length (_rotate_x . bv)) 1)) ;; big1
              (write-long (elt (_rotate_x . bv) 0) s)
              (write-long (if (>= _rotate_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rotate_x s)(write-long (if (>= _rotate_x 0) 0 #xffffffff) s)))
     ;; int64 _rotate_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rotate_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rotate_y) (= (length (_rotate_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rotate_y . bv) 0) 0) s)
              (write-long (ash (elt (_rotate_y . bv) 1) -1) s))
             ((and (class _rotate_y) (= (length (_rotate_y . bv)) 1)) ;; big1
              (write-long (elt (_rotate_y . bv) 0) s)
              (write-long (if (>= _rotate_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rotate_y s)(write-long (if (>= _rotate_y 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _translate_x
#+(or :alpha :irix6 :x86_64)
      (setf _translate_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _translate_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _translate_y
#+(or :alpha :irix6 :x86_64)
      (setf _translate_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _translate_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rotate_x
#+(or :alpha :irix6 :x86_64)
      (setf _rotate_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rotate_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rotate_y
#+(or :alpha :irix6 :x86_64)
      (setf _rotate_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rotate_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get sc_msgs::vision_line :md5sum-) "5907c32cd7a7cfbeac94d5e88b2280ff")
(setf (get sc_msgs::vision_line :datatype-) "sc_msgs/vision_line")
(setf (get sc_msgs::vision_line :definition-)
      "std_msgs/Header header
int64 translate_x
int64 translate_y
int64 rotate_x
int64 rotate_y

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



(provide :sc_msgs/vision_line "5907c32cd7a7cfbeac94d5e88b2280ff")


