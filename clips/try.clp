(deftemplate person
(slot name)
(slot age)
(slot gender)
(slot id))

(defrule person-rule
(person(name ?n)
(age ?a) (gender ?g) (id ?i))

=>
(printout t "hi im " ?n " im " ?a " and my sexuality is " ?g )
)

(deffacts person-info
(person(name "james gabriel santos") (age 18) (gender male) (id 676767)))