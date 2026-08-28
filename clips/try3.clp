(deftemplate bank 
(slot balance))

(deffunction deposit
(?amount)
(bind ?amount (bank(+ balance))))

(deffacts bal
(bank (balance 5000)))


