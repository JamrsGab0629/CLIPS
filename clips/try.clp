(deftemplate human 
(slot name)
(slot age)
(slot gender))

(deffacts human-facts
(human (name "gabriel")
(age 17)
(gender male))
)

(defrule human-rule

)