;;; 1. Define the template for the student information
(deftemplate student
   (slot name)
   (slot student-number)
   (slot course)
   (slot subject)
   (slot grade))

;;; Add sample facts (No user input required)
(deffacts sample-students
   (student (name "James Santos") 
            (student-number "2026-00123") 
            (course "Computer Science") 
            (subject "Artificial Intelligence") 
            (grade 88))
   (student (name "Ana Reyes") 
            (student-number "2026-00456") 
            (course "Information Technology") 
            (subject "Data Structures") 
            (grade 70)))

;;; 2. Rule to determine if the student PASSED (Grade >= 75)
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

;;; Rule to determine if the student FAILED (Grade < 75)
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