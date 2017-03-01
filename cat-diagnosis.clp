(defrule Menu 
        (not (iffoundChoice ?)) =>
                (printout t crlf "Apakah nafsu makan berkurang/tidak mau makan ? (yes | no) " crlf crlf " Jawaban: " )
                (assert (G01 (read)))
        )

        ;;------------------G01Y-G02
        (defrule G01_YES
                (G01 yes) ?retractChy <- (G01 yes)
                (not (G02 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda terlihat lemas/kekebalan tubuh menurun ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G02 (read)))
        )


         (defrule G01_NO
                
                (G01 no) ?retractChy <- (G01 no)
                (not (G09 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah mata kucing berair/ terdapat belekan? (Yes | No)" crlf crlf " Jawaban: " )
                (assert (G09 (read)))
        )



             ;;------------------G02Y-G03
        (defrule G02_YES
                (G02 yes) ?retractChy <- (G02 yes)
                (not (G03 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing bersin-bersin berkelanjutan ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G03 (read)))
        )


           ;;------------------G01N->G16
        (defrule G02_NO
                
                (G02 no) ?retractChy <- (G02 no)
                (not(G16))=>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda terlihat ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G16 (read)))
        )


        ;;------------------G03Y-G04
        (defrule G03_YES
                (G03 yes) ?retractChy <- (G03 yes)
                (not (G04 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah terdapat leleran pada hidung kucing? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G04 (read)))
        )


         ;;------------------G03N->G16
        (defrule G03_NO
                (G03 no) ?retractChy <- (G03 no)
                (not(G16))=>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda terlihat kurus ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G16 (read)))
        )


        ;;------------------G04Y-G05
        (defrule G04_YES
                (G04 yes) ?retractChy <- (G04 yes)
                (not (G05 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah terdapat sariawan pada lidah kucing? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G05 (read)))
        )

        ;;------------------G04N->FINISH
        (defrule G04_NO
                (G04 no) ?retractChy <- (G04 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


        ;;------------------G05Y-G06
        (defrule G05_YES
                (G05 yes) ?retractChy <- (G05 yes)
                (not (G06 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah mata kucing anda terlihat lesu? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G06 (read)))
        )

        ;;------------------G05N->FINISH
        (defrule G05_NO
                (G05 no) ?retractChy <- (G05 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


             ;;------------------G06Y-G07
        (defrule G06_YES
                (G06 yes) ?retractChy <- (G06 yes)
                (not (G07 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda sering batuk? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G07 (read)))
        )


        ;;------------------G06N->FINISH
        (defrule G06_NO
                (G06 no) ?retractChy <- (G06 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


         ;;------------------G07Y-G08
        (defrule G07_YES
                (G07 yes) ?retractChy <- (G07 yes)
                (not (G08 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah mata kucing anda merah? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G08 (read)))
        )

        ;;------------------G07N->FINISH
        (defrule G07_NO
                (G07 no) ?retractChy <- (G07 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )

        ;;------------------G08Y-G09
        (defrule G08_YES
                (G08 yes) ?retractChy <- (G08 yes)
                (not (G09 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah mata kucing berair/ terdapat belekan? (Yes | No)" crlf crlf " Jawaban: " )
                (assert (G09 (read)))
        )

        ;;------------------G08N->FINISH
        (defrule G08_NO
                (G08 no) ?retractChy <- (G08 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


        ;;------------------G09Y-G10
        (defrule G09_YES
                (G09 yes) ?retractChy <- (G09 yes)
                (not (G10 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda sesak nafas berlebihan?" crlf crlf " Jawaban: " )
                (assert (G10 (read)))
        )

        ;;------------------G09N->FINISH
        (defrule G09_NO
                (G09 no) ?retractChy <- (G09 no)
                 (not (G28 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda tidak pernah kencing lagi ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G28 (read)))
        )



         ;;------------------G010Y-G11
        (defrule G10_YES
                (G10 yes) ?retractChy <- (G10 yes)
                (not (G11 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda sering buang air? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G11 (read)))
        )

        ;;------------------G10N->FINISH
        (defrule G10_NO
                (G10 no) ?retractChy <- (G10 no)
                (not (G26 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kelopak mata kucing anda meradang?" crlf crlf " Jawaban: " )
                (assert (G26 (read)))
        )



       ;;------------------G011Y-G12
        (defrule G11_YES
                (G11 yes) ?retractChy <- (G11 yes)
                (not (G12 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda dehidrasi? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G12 (read)))
        )

         ;;------------------G11N->FINISH
        (defrule G11_NO
                (G11 no) ?retractChy <- (G11 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


         ;;------------------G012Y-G13
        (defrule G12_YES
                (G12 yes) ?retractChy <- (G12 yes)
                (not (G13 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda terlihat lemas? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G13 (read)))
        )

         ;;------------------G12N->FINISH
        (defrule G12_NO
                (G12 no) ?retractChy <- (G12 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


        ;;------------------G013Y-G14
        (defrule G13_YES
                (G13 yes) ?retractChy <- (G13 yes)
                (not (G14 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah suhu tubuh kucing anda diatas 30C ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G14 (read)))
        )

         ;;------------------G13N->FINISH
        (defrule G13_NO
                (G13 no) ?retractChy <- (G13 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


        ;;------------------G014Y-G15
        (defrule G14_YES
                (G14 yes) ?retractChy <- (G14 yes)
                (not (G15 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda sering bersin ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G15 (read)))
        )


         ;;------------------G11N->FINISH
        (defrule G14_NO
                (G14 no) ?retractChy <- (G14 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )

;;------------------G015Y-RES=>FLU KUCING
        (defrule G15_YES
                (G15 yes) ?retractChy <- (G15 yes)
                 =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "KUCING ANDA TERKENA FLU KUCING" crlf crlf "TERIMAKASIH " )
        )

         ;;------------------G11N->FINISH
        (defrule G15_NO
                (G15 no) ?retractChy <- (G15 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )





     


        ;;------------------G016Y-G17
        (defrule G16_YES
                (G16 yes) ?retractChy <- (G16 yes)
                (not (G17 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda sering menggaruk badannya ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G17 (read)))
        )

;;------------------G16N->FINISH
        (defrule G16_NO
                (G11 no) ?retractChy <- (G11 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


          ;;------------------G017Y-G18
        (defrule G17_YES
                (G17 yes) ?retractChy <- (G17 yes)
                (not (G18 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda berbau tidak sedap ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G18 (read)))
        )

        ;;------------------G16N->FINISH
        (defrule G17_NO
                (G17 no) ?retractChy <- (G17 no)
                (not (G21 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah wajah kucing anda sayu ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G21 (read)))
        )


        ;;------------------G018Y-G19
        (defrule G18_YES
                (G18 yes) ?retractChy <- (G18 yes)
                (not (G19 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah terdapat bekas luka didaerah telinga, mata, atau kaki kucing anda ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G19 (read)))
        )

        ;;------------------G18N->FINISH
        (defrule G18_NO
                (G18 no) ?retractChy <- (G18 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )

        ;;------------------G019Y-G20
        (defrule G19_YES
                (G19 yes) ?retractChy <- (G19 yes)
                (not (G20 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah ditemukan sisa-sisa bekas luka kucing anda disekitar kasur ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G20 (read)))
        )

        ;;------------------G18N->FINISH
        (defrule G19_NO
                (G19 no) ?retractChy <- (G19 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


;;------------------G020Y-RES=> SCABIES
        (defrule G20_YES
                (G20 yes) ?retractChy <- (G20 yes)
                =>
               (retract ?retractChy)
                (printout t crlf crlf crlf "KUCING ANDA TERKENA SCABIES" crlf crlf "TERIMAKASIH " )
        )

          ;;------------------G18N->FINISH
        (defrule G20_NO
                (G20 no) ?retractChy <- (G20 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


        ;;------------------G021Y-G22
        (defrule G21_YES
                (G21 yes) ?retractChy <- (G21 yes)
                (not (G22 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah wajah kucing anda terlihat sayu ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G22 (read)))
        )

           ;;------------------G21N->FINISH
        (defrule G21_NO
                (G21 no) ?retractChy <- (G21 no)
                =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "GEJALA KUCING ANDA BELUM DAPAT DIDETEKSI" crlf crlf "TERIMAKASIH " )
        )


            ;;------------------G022Y-G23
        (defrule G22_YES
                (G22 yes) ?retractChy <- (G22 yes)
                (not (G23 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah perut kucing anda tampak menggantung ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G23 (read)))
        )


            ;;------------------G023Y-G24
        (defrule G23_YES
                (G23 yes) ?retractChy <- (G23 yes)
                (not (G24 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda timbul kejang-kejang ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G24 (read)))
        )


        ;;------------------G024Y-G25
        (defrule G24_YES
                (G24 yes) ?retractChy <- (G24 yes)
                (not (G25 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah terdapat cacing di bekas muntahan kucing ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G25 (read)))
        )


;;------------------G025Y-G26-RES=>helminthiasis
        (defrule G25_YES
                (G25 yes) ?retractChy <- (G25 yes)
                 =>
               (retract ?retractChy)
                (printout t crlf crlf crlf "KUCING ANDA TERKENA HELMINTHIASIS" crlf crlf "TERIMAKASIH " )
        )

           ;;------------------G026Y-G27
        (defrule G26_YES
                (G26 yes) ?retractChy <- (G26 yes)
                (not (G27 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah hidung kucing anda berlendir ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G27 (read)))
        )


;;------------------G027Y-RES=>infeksi chlamydia
        (defrule G27_YES
                (G27 yes) ?retractChy <- (G27 yes)
                   =>
               (retract ?retractChy)
                (printout t crlf crlf crlf "KUCING ANDA TERKENA infeksi chlamydia" crlf crlf "TERIMAKASIH " )
        )

            ;;------------------G028Y-G29
        (defrule G28_YES
                (G28 yes) ?retractChy <- (G28 yes)
                (not (G29 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda kesulitan buang air kecil ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G29 (read)))
        )

        ;;------------------G029Y-G30
        (defrule G29_YES
                (G29 yes) ?retractChy <- (G29 yes)
                (not (G30 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda sering buang air kecil tetapi sedikit  ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G30 (read)))
        )


          ;;------------------G030Y-G31
        (defrule G30_YES
                (G30 yes) ?retractChy <- (G30 yes)
                (not (G31 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah kucing anda nampak kesakitan ketika buang air  ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G31 (read)))
        )

              ;;------------------G031Y-G32
        (defrule G31_YES
                (G31 yes) ?retractChy <- (G31 yes)
                (not (G32 ?)) =>
                (retract ?retractChy)
                (printout t crlf crlf crlf "Apakah urine kucing berdarah  ? (Yes | No) " crlf crlf " Jawaban: " )
                (assert (G32 (read)))
        )


;;------------------G032Y-RES=>Flue TD
        (defrule G32_YES
                (G31 yes) ?retractChy <- (G31 yes)
                =>
               (retract ?retractChy)
                (printout t crlf crlf crlf "KUCING ANDA TERKENA FLU TD" crlf crlf "TERIMAKASIH " )
        )





   















 
 