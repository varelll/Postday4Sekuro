
(cl:in-package :asdf)

(defsystem "first_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pesan1" :depends-on ("_package_Pesan1"))
    (:file "_package_Pesan1" :depends-on ("_package"))
  ))