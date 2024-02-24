(defparameter *BDR* '((R1 ((< Temps 20)) (EQ Cat�gorie1 Equilibr�) )
                      (R2 ((<= Score -3) (>= Temps 20)) (EQ Cat�gorie1 Tr�s_off))                      
(R3 ((= Score -2) (>=  Temps 20) (< Temps 60)) (EQ Cat�gorie1 Offensif))
(R4 ((= Score -2) (>=  Temps 60)) (EQ Cat�gorie1 Tr�s_off))
(R5 ((= Score -1) (>=  Temps 40) (< Temps 70)) (EQ Cat�gorie1 Offensif))
(R6 ((= Score -1) (>=  Temps 70)) (EQ Cat�gorie1 Tr�s_off))
(R7 ((= Score 0)  (< Temps 50)) (EQ Cat�gorie1 Equilibr�))
(R8 ((= Score 0) (>=  Temps 50) (< Temps 80)) (EQ Cat�gorie1 Offensif))
(R9 ((= Score 0) (>=  Temps 80)) (EQ Cat�gorie1 Tr�s_off))
(R10 ((= Score 1) (<  Temps 40)) (EQ Cat�gorie1 Equilibr�))
(R11 ((= Score 1) (>=  Temps 40) (< Temps 70)) (EQ Cat�gorie1 D�fensif))
(R12 ((= Score 1) (>=  Temps 70)) (EQ Cat�gorie1 Tr�s_def))
(R13 ((>= Score 2) (< Temps 50)) (EQ Cat�gorie1 Equilibr�))
(R14 ((>= Score 2) (>=  Temps 50)) (EQ Cat�gorie1 D�fensif))
(R15 ((Eq Cat�gorie1 Tr�s_def) (Eq Cat�gorie_adverse Tr�s_def)) (EQ Cat�gorie2 D�fensif))
(R16 ((Eq Cat�gorie1 Tr�s_def) (Eq Cat�gorie_adverse D�fensif)) (EQ Cat�gorie2 Tr�s_def))
(R17 ((Eq Cat�gorie1 Tr�s_def) (Eq Cat�gorie_adverse Equilibr�)) (EQ Cat�gorie2 Tr�s_def))
(R18 ((Eq Cat�gorie1 Tr�s_def) (Eq Cat�gorie_adverse Offensif)) (EQ Cat�gorie2 Tr�s_def))
(R19 ((Eq Cat�gorie1 Tr�s_def) (Eq Cat�gorie_adverse Tr�s_off)) (EQ Cat�gorie2 Tr�s_def))

(R20 ((Eq Cat�gorie1 D�fensif) (Eq Cat�gorie_adverse Tr�s_def)) (EQ Cat�gorie2 Equilibr�))
(R21 ((Eq Cat�gorie1 D�fensif) (Eq Cat�gorie_adverse D�fensif)) (EQ Cat�gorie2 D�fensif))
(R22 ((Eq Cat�gorie1 D�fensif) (Eq Cat�gorie_adverse Equilibr�)) (EQ Cat�gorie2 D�fensif))
(R23 ((Eq Cat�gorie1 D�fensif) (Eq Cat�gorie_adverse Offensif)) (EQ Cat�gorie2 D�fensif))
(R24 ((Eq Cat�gorie1 D�fensif) (Eq Cat�gorie_adverse Tr�s_off)) (EQ Cat�gorie2 Tr�s_def))

(R25 ((Eq Cat�gorie1 Equilibr�) (Eq Cat�gorie_adverse Tr�s_def)) (EQ Cat�gorie2 Offensif))
(R26 ((Eq Cat�gorie1 Equilibr�) (Eq Cat�gorie_adverse D�fensif)) (EQ Cat�gorie2 Equilibr�))
(R27 ((Eq Cat�gorie1 Equilibr�) (Eq Cat�gorie_adverse Equilibr�)) (EQ Cat�gorie2 Equilibr�))
(R28 ((Eq Cat�gorie1 Equilibr�) (Eq Cat�gorie_adverse Offensif)) (EQ Cat�gorie2 Equilibr�))
(R29 ((Eq Cat�gorie1 Equilibr�) (Eq Cat�gorie_adverse Tr�s_off)) (EQ Cat�gorie2 D�fensif))

(R30 ((Eq Cat�gorie1 Offensif) (Eq Cat�gorie_adverse Tr�s_def)) (EQ Cat�gorie2 Tr�s_off))
(R31 ((Eq Cat�gorie1 Offensif) (Eq Cat�gorie_adverse D�fensif)) (EQ Cat�gorie2 Offensif))
(R32 ((Eq Cat�gorie1 Offensif) (Eq Cat�gorie_adverse Equilibr�)) (EQ Cat�gorie2 Offensif))
(R33 ((Eq Cat�gorie1 Offensif) (Eq Cat�gorie_adverse Offensif)) (EQ Cat�gorie2 Offensif))
(R34 ((Eq Cat�gorie1 Offensif) (Eq Cat�gorie_adverse Tr�s_off)) (EQ Cat�gorie2 Equilibr�))

(R35 ((Eq Cat�gorie1 Tr�s_off) (Eq Cat�gorie_adverse Tr�s_def)) (EQ Cat�gorie2 Tr�s_off))
(R36 ((Eq Cat�gorie1 Tr�s_off) (Eq Cat�gorie_adverse D�fensif)) (EQ Cat�gorie2 Tr�s_off))
(R37 ((Eq Cat�gorie1 Tr�s_off) (Eq Cat�gorie_adverse Equilibr�)) (EQ Cat�gorie2 Tr�s_off))
(R38 ((Eq Cat�gorie1 Tr�s_off) (Eq Cat�gorie_adverse Offensif)) (EQ Cat�gorie2 Tr�s_off))
(R39 ((Eq Cat�gorie1 Tr�s_off) (Eq Cat�gorie_adverse Tr�s_off)) (EQ Cat�gorie2 Offensif))


(R40 ((Eq Cat�gorie2 Tr�s_def) (Eq zone_a_attaquer Axe)) (EQ syst�me (5-2-1-2 5-3-2)))
(R41 ((Eq Cat�gorie2 Tr�s_def) (Eq zone_a_attaquer Ailes)) (EQ syst�me 5-2-3))
(R42 ((Eq Cat�gorie2 D�fensif) (Eq zone_a_attaquer Axe)) (EQ syst�me (4-4-1-1 4-5-1)))
(R43 ((Eq Cat�gorie2 D�fensif) (Eq zone_a_attaquer Ailes)) (EQ syst�me 5-2-3))
(R44 ((Eq Cat�gorie2 Equilibr�) (Eq zone_a_attaquer Ailes)) (EQ syst�me 4-3-3_pointeBasse))
(R45 ((Eq Cat�gorie2 Equilibr�) (Eq zone_a_attaquer Axe)) (EQ syst�me (4-2-3-1 4-4-2_aPlat)))
(R46 ((Eq Cat�gorie2 Offensif) (Eq zone_a_attaquer Axe)) (EQ syst�me (3-5-2 4-2-2-2 4-3-1-2 4-4-2_losange)))
(R47 ((Eq Cat�gorie2 Offensif) (Eq zone_a_attaquer Ailes)) (EQ syst�me 4-3-3_pointeHaute))
(R48 ((Eq Cat�gorie2 Tr�s_off) (Eq zone_a_attaquer Axe)) (EQ syst�me (3-4-1-2 4-2-4)))
(R49 ((Eq Cat�gorie2 Tr�s_off) (Eq zone_a_attaquer Ailes)) (EQ syst�me (3-4-3 4-2-4)))
))

;; Ex de BDF : 
;(setq *BDF '((Score 3) (Temps 70) (Cat�gorie_adverse Offensif) (zone_a_attaquer Axe)))
;;R�sultat attendu : (4-4-1-1 4-5-1)


;(setq *BDF '((Score 0) (Temps 60) (Cat�gorie_adverse Equilibr�) (zone_a_attaquer Ailes)))
  ;; R�sultat attendu : (4-3-3_pointeHaute)
      


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Fonctions interm�diaires ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defun type_premisse_dans_BDF (premisse BDF)
  (let ( (typep (cadr premisse)))
    (if (assoc typep BDF) (assoc typep BDF)
      NIL)
    )
  )
;;Ex : (type_premisse_dans_BDF '(>= Score 2) *BDF)    
     

(defun validation_premisse (liste_p BDF)
  (let ((fait NIL) (ok T) )
    (loop for p in liste_p do
              (setq fait (type_premisse_dans_BDF p BDF))
               (if fait
                   (if (not (funcall (car p) (cadr fait) (caddr p)))
                       ;;si une pr�misse n'est pas v�rifi�e, alors l'ensemble des pr�misses n'est pas valide
                       (setq ok NIL)  
                     
                     )
                 ;;si la pr�misse n'est pas dans la BDF, alors l'ensemble des pr�misses n'est pas valide
                 (setq ok NIL) 
                 
                 )
              )
    ok
        )
    
    )
;; Ex: (validation_premisse  '((>= Score 2) (>=  Temps 50)) *BDF)


(defun ajouter_fait_dans_BDF (Rx BDF) ;;Rx est la r�gle dont les pr�misses sont v�rifi�es
  (let ((conclusion (caddr Rx)))
    (if (not (type_premisse_dans_BDF conclusion BDF)) ;;v�rifie qu'aucune conclusion de ce type n'est pas d�j� dans BDF.
        ;On peut faire �a car nos conclusion sont compl�mentaires et qu'il n'y a aucune intersection entre elles.
        (push (cdr conclusion) BDF)
      )
    )
  )
;;EX : (setq *BDF (ajouter_fait_dans_BDF '(R24 ((Eq Cat�gorie1 D�fensif) (Eq Cat�gorie_adverse Tr�s_off)) (EQ Cat�gorie2 Tr�s_def)) *BDF)) 
;/!\ A n'utiliser que si les pr�misses sont v�rifi�es



(defun type_conclusion_dans_BDF (Rx BDF)
  (if (assoc (cadr (caddr RX)) BDF) T
    NIl)
  )
;;Renvoie T si on a d�j� une conclusion de ce type, NIL sinon.
;;EX : (type_conclusion_dans_BDF '(R39 ((Eq Cat�gorie1 Tr�s_off) (Eq Cat�gorie_adverse Tr�s_off)) (EQ Cat�gorie2 Offensif)) *BDF)



(defun suivant (sous_liste liste) 
  (if (EQUAL sous_liste (car (last liste))) (car liste)  ;;si la sous-liste est dernier �l�ment de la liste, on retourne au d�but
    (progn
    (while (and liste (not (EQUAL (car liste) sous_liste))) 
      (pop liste)   ;;on parcourt la liste jusqu'� tomber sur la sous-liste
      )
    (pop liste) ;;on d�passe la sous-liste
    (pop liste) ;;on renvoit l'�l�ment juste derri�re
      )
    )

  )
;;Cette fonction nous permet de ne pas avoir besoin que la BDR soit rang�e par type de conclusion

;;Ex : (suivant '(R20 ((Eq Cat�gorie1 D�fensif) (Eq Cat�gorie_adverse Tr�s_def)) (EQ Cat�gorie2 Equilibr�)) *BDR*)
;(suivant '(R49 ((Eq Cat�gorie2 Tr�s_off) (Eq zone_a_attaquer Ailes)) (EQ syst�me (3-4-3 4-2-4))) *BDR*)


(defun initBDF ()
  (let ( (BDF '()) (Score NIL) (Temps NIL) (zone_a_attaquer NIL) (agressivit�_adverse NIL))
    (print "Temps �coul� : ")
    (setq Temps (read))
    (while (or (not (numberp Temps)) (> Temps 90) (< Temps 0) )
      (print "ERREUR. Temps �coul� : ")
      (setq Temps (read))
      )
    
    (print "Ecart au score (votre �quipe - �quipe adverse) : ")
    (setq Score (read))
    (while (not (numberp Score))
      (print "ERREUR. Ecart au score (votre �quipe - �quipe adverse) : ")
      (setq Score (read))
      )
    
    (print "Agressivit� de l'adversaire : ")
    (print "1 : Tr�s d�fensif. ")
    (print "2 : D�fensif.")
    (print "3 : Equilibr�.")
    (print "4 : Offensif.")
    (print "5 : Tr�s offensif.")
    (setq agressivit�_adverse (read))
    
    (while (not (member agressivit�_adverse '(1 2 3 4 5)))
      (print "ERREUR. Agressivit� de l'adversaire : ")
      (setq agressivit�_adverse (read))
      )
    (if (= agressivit�_adverse 1) 
        (setq agressivit�_adverse 'Tr�s_def)
      (if (= agressivit�_adverse 2)
          (setq agressivit�_adverse 'D�fensif)
        (if (= agressivit�_adverse 3)
            (setq agressivit�_adverse 'Equilibr�)
          (if (= agressivit�_adverse 4)
              (setq agressivit�_adverse 'Offensif)
            (if (= agressivit�_adverse 5)
                (setq agressivit�_adverse 'Tr�s_off)
              )
            )
          )
        )
      )
    
    (print "Zone � attaquer : ")
    (print "1 : Axe.")
    (print "2 : Ailes.")
    (setq zone_a_attaquer (read))
    
    (while (not (member zone_a_attaquer '(1 2)))
      (print "ERREUR. Zone � attaquer : ")
      (setq zone_a_attaquer (read))
      )
    (if (= zone_a_attaquer 1)
        (setq zone_a_attaquer 'Axe)
      (if (= zone_a_attaquer 2)
          (setq zone_a_attaquer 'AIles)
        )
      )
    
    (push (list 'Score Score) BDF)
    (push (list 'Temps Temps) BDF)
    (push (list 'Cat�gorie_adverse agressivit�_adverse) BDF)
    (push (list 'zone_a_attaquer zone_a_attaquer) BDF)
    )
  )

    

    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Rappel des fonctions :


;type_premisse_dans_BDF (premisse BDF): retourne le fait de la BDF si la premisse est du m�me type, NIL sinon
;validation_premisse (liste_p BDF): retourne T si les pr�missens sont valid�es par la BDF, Nil sinon
;ajouter_fait_dans_BDF (Rx BDF) : renvoit la BDF avec la conclusion de RX dedans
;type_conclusion_dans_BDF (Rx BDF) : retourne T si BDF contient d�j� un fait du m�me type que la conclusion de Rx
;suivant (sous_liste liste) : retourne l'�l�ment suivant dans la liste
;initBDF : demande � l'utilisateur les valeurs pour initialiser la BDF



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FONCTION PRINCIPALE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Version sans chercher � supprimer les r�gles inutiles.

(defun moteur (BDR)
  (let ((Regle (car BDR)) (BDF (initBDF)))
    
    (while (not (assoc 'syst�me BDF))
      (if (not (type_conclusion_dans_BDF Regle BDF))
          (if (validation_premisse (cadr Regle) BDF)
              (setq BDF (ajouter_fait_dans_BDF Regle BDF))
            )
        )
      (setq Regle (suivant Regle BDR))
      )
    (print "Syst�mes conseill�s : ")
    (cadr (assoc 'syst�me BDF))
    )
    )
    
    
  

;; (moteur *BDR*)





