
(deftemplate student
   (slot name)
   (slot student-number)
   (slot course)
   (slot subject)
   (slot grade))


(deffacts sample-students
   (student (name "James Gabriel Santos") 
            (student-number "2026-00123") 
            (course "Computer Science") 
            (subject "Cs Elec 1") 
            (grade 88))
   (student (name "John Aldrich Bernardo") 
            (student-number "2026-00456") 
            (course "Computer Science") 
            (subject "Data Structures And Algorithmns") 
            (grade 70)))


(defrule student-passed
   (student (name ?name) 
            (student-number ?snum) 
            (course ?course) 
            (subject ?subj) 
            (grade ?g &:(>= ?g 75)))
   =>
   (printout t "----------------------------------------" crlf)
   (printout t "Name          : " ?name crlf)
   (printout t "Student No.   : " ?snum crlf)
   (printout t "Course        : " ?course crlf)
   (printout t "Subject       : " ?subj crlf)
   (printout t "Grade         : " ?g crlf)
   (printout t "Status        : PASSED" crlf)
   (printout t "----------------------------------------" crlf))


(defrule student-failed
   (student (name ?name) 
            (student-number ?snum) 
            (course ?course) 
            (subject ?subj) 
            (grade ?g &:(< ?g 75)))
   =>
   (printout t "----------------------------------------" crlf)
   (printout t "Name          : " ?name crlf)
   (printout t "Student No.   : " ?snum crlf)
   (printout t "Course        : " ?course crlf)
   (printout t "Subject       : " ?subj crlf)
   (printout t "Grade         : " ?g crlf)
   (printout t "Status        : FAILED" crlf)
   (printout t "----------------------------------------" crlf))