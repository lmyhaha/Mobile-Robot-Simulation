
(cl:in-package :asdf)

(defsystem "sc_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sc_msgs-msg
)
  :components ((:file "_package")
    (:file "GetParamList" :depends-on ("_package_GetParamList"))
    (:file "_package_GetParamList" :depends-on ("_package"))
    (:file "SetParamList" :depends-on ("_package_SetParamList"))
    (:file "_package_SetParamList" :depends-on ("_package"))
  ))