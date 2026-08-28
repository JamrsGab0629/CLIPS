(deftemplate member
   (slot name)
   (slot status))

(deffacts library-users
   (member (name "alice") (status "active"))
   (member (name "bob") (status "suspended")))

(defrule chech-active
(member (name ?n)(status "active"))
=>

(printout t ?n " is active" crlf))