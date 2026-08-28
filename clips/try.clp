(deftemplate person
(slot name) (slot department))

(defrule personification

    (person(name ?n) (department "Compsci"))
    =>

    (printout t "your are compsci" crlf))
(deffacts fact-person
(person (name "james")(department "Compsci")))