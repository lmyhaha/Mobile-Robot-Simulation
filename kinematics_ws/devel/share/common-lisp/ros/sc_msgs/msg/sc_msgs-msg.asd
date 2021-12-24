
(cl:in-package :asdf)

(defsystem "sc_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "intf_state" :depends-on ("_package_intf_state"))
    (:file "_package_intf_state" :depends-on ("_package"))
    (:file "parameters" :depends-on ("_package_parameters"))
    (:file "_package_parameters" :depends-on ("_package"))
    (:file "robot_state" :depends-on ("_package_robot_state"))
    (:file "_package_robot_state" :depends-on ("_package"))
    (:file "vision_line" :depends-on ("_package_vision_line"))
    (:file "_package_vision_line" :depends-on ("_package"))
    (:file "vision_rect" :depends-on ("_package_vision_rect"))
    (:file "_package_vision_rect" :depends-on ("_package"))
  ))