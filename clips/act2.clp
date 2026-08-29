(deftemplate student
   (slot name)
   (slot student_id)
   (multislot grades))

(defrule evaluate-grade
   (student (name ?name) (student_id ?id) (grades ?att ?q1 ?q2 ?q3 ?exam))
   =>
  
   (bind ?final (+ (* ?att 0.10) 
                   (* (/ (+ ?q1 ?q2 ?q3) 3) 0.60) 
                   (* ?exam 0.30)))

  
   (if (>= ?final 75)
      then
      (printout t ?name " passed the subject" crlf)
      else
      (printout t ?name " failed the subject" crlf)))

(deffacts fact-student
(student (name "James Gabriel Santos") (student_id 777777) (grades 100 50 70 40 80))

(student (name "John Aldrich Bernardo") (student_id 676967) (grades 100 100 100 80 80))
)