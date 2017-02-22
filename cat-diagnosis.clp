(defrule Menu
 (not (iffoundChoice ?)) 
=>
(printout t crlf " Apakah kucing anda sering bersembunyi ? (yes | no) " crlf crlf " Jawaban: " )
 (assert (q1 (read))))
 
;;------------------Q1Y-Q2
 (defrule KUCING_SEMBUNYI_YES
 (q1 yes)
 ?retractChy <- (q1 yes)
 (not (q2 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Apakah mulut kucing anda kering ? (Yes | No) " crlf crlf " Jawaban: " )
 (assert (q2 (read))))
 
;;------------------Q1N
 (defrule KUCING_SEMBUNYI_NO
 (q1 no)
 ?retractChy <- (q1 no)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Kucing anda baik-baik saja"
 crlf crlf " Terima kasih telah menggunakan program ini... "crlf crlf )
)

;;------------------Q2Y
 (defrule KUCING_KERING_YES
 (q2 yes)
 ?retractChy <- (q2 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Kucing anda terkena penyakit distemper"
 crlf crlf " Terima kasih telah menggunakan program ini... "crlf crlf )
 )
 
 ;;------------------Q2Y
 (defrule KUCING_KERING_NO
 (q2 no)
 ?retractChy <- (q2 no)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Kucing anda baik-baik saja"
 crlf crlf " Terima kasih telah menggunakan program ini... "crlf crlf )
 )
 
 