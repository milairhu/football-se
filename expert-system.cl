(defparameter *BDR* '((R1 ((< Temps 20)) (EQ Catégorie1 Equilibré) )
                      (R2 ((<= Score -3) (>= Temps 20)) (EQ Catégorie1 Très_off))                      
(R3 ((= Score -2) (>=  Temps 20) (< Temps 60)) (EQ Catégorie1 Offensif))
(R4 ((= Score -2) (>=  Temps 60)) (EQ Catégorie1 Très_off))
(R5 ((= Score -1) (>=  Temps 40) (< Temps 70)) (EQ Catégorie1 Offensif))
(R6 ((= Score -1) (>=  Temps 70)) (EQ Catégorie1 Très_off))
(R7 ((= Score 0)  (< Temps 50)) (EQ Catégorie1 Equilibré))
(R8 ((= Score 0) (>=  Temps 50) (< Temps 80)) (EQ Catégorie1 Offensif))
(R9 ((= Score 0) (>=  Temps 80)) (EQ Catégorie1 Très_off))
(R10 ((= Score 1) (<  Temps 40)) (EQ Catégorie1 Equilibré))
(R11 ((= Score 1) (>=  Temps 40) (< Temps 70)) (EQ Catégorie1 Défensif))
(R12 ((= Score 1) (>=  Temps 70)) (EQ Catégorie1 Très_def))
(R13 ((>= Score 2) (< Temps 50)) (EQ Catégorie1 Equilibré))
(R14 ((>= Score 2) (>=  Temps 50)) (EQ Catégorie1 Défensif))
(R15 ((Eq Catégorie1 Très_def) (Eq Catégorie_adverse Très_def)) (EQ Catégorie2 Défensif))
(R16 ((Eq Catégorie1 Très_def) (Eq Catégorie_adverse Défensif)) (EQ Catégorie2 Très_def))
(R17 ((Eq Catégorie1 Très_def) (Eq Catégorie_adverse Equilibré)) (EQ Catégorie2 Très_def))
(R18 ((Eq Catégorie1 Très_def) (Eq Catégorie_adverse Offensif)) (EQ Catégorie2 Très_def))
(R19 ((Eq Catégorie1 Très_def) (Eq Catégorie_adverse Très_off)) (EQ Catégorie2 Très_def))

(R20 ((Eq Catégorie1 Défensif) (Eq Catégorie_adverse Très_def)) (EQ Catégorie2 Equilibré))
(R21 ((Eq Catégorie1 Défensif) (Eq Catégorie_adverse Défensif)) (EQ Catégorie2 Défensif))
(R22 ((Eq Catégorie1 Défensif) (Eq Catégorie_adverse Equilibré)) (EQ Catégorie2 Défensif))
(R23 ((Eq Catégorie1 Défensif) (Eq Catégorie_adverse Offensif)) (EQ Catégorie2 Défensif))
(R24 ((Eq Catégorie1 Défensif) (Eq Catégorie_adverse Très_off)) (EQ Catégorie2 Très_def))

(R25 ((Eq Catégorie1 Equilibré) (Eq Catégorie_adverse Très_def)) (EQ Catégorie2 Offensif))
(R26 ((Eq Catégorie1 Equilibré) (Eq Catégorie_adverse Défensif)) (EQ Catégorie2 Equilibré))
(R27 ((Eq Catégorie1 Equilibré) (Eq Catégorie_adverse Equilibré)) (EQ Catégorie2 Equilibré))
(R28 ((Eq Catégorie1 Equilibré) (Eq Catégorie_adverse Offensif)) (EQ Catégorie2 Equilibré))
(R29 ((Eq Catégorie1 Equilibré) (Eq Catégorie_adverse Très_off)) (EQ Catégorie2 Défensif))

(R30 ((Eq Catégorie1 Offensif) (Eq Catégorie_adverse Très_def)) (EQ Catégorie2 Très_off))
(R31 ((Eq Catégorie1 Offensif) (Eq Catégorie_adverse Défensif)) (EQ Catégorie2 Offensif))
(R32 ((Eq Catégorie1 Offensif) (Eq Catégorie_adverse Equilibré)) (EQ Catégorie2 Offensif))
(R33 ((Eq Catégorie1 Offensif) (Eq Catégorie_adverse Offensif)) (EQ Catégorie2 Offensif))
(R34 ((Eq Catégorie1 Offensif) (Eq Catégorie_adverse Très_off)) (EQ Catégorie2 Equilibré))

(R35 ((Eq Catégorie1 Très_off) (Eq Catégorie_adverse Très_def)) (EQ Catégorie2 Très_off))
(R36 ((Eq Catégorie1 Très_off) (Eq Catégorie_adverse Défensif)) (EQ Catégorie2 Très_off))
(R37 ((Eq Catégorie1 Très_off) (Eq Catégorie_adverse Equilibré)) (EQ Catégorie2 Très_off))
(R38 ((Eq Catégorie1 Très_off) (Eq Catégorie_adverse Offensif)) (EQ Catégorie2 Très_off))
(R39 ((Eq Catégorie1 Très_off) (Eq Catégorie_adverse Très_off)) (EQ Catégorie2 Offensif))


(R40 ((Eq Catégorie2 Très_def) (Eq zone_a_attaquer Axe)) (EQ système (5-2-1-2 5-3-2)))
(R41 ((Eq Catégorie2 Très_def) (Eq zone_a_attaquer Ailes)) (EQ système 5-2-3))
(R42 ((Eq Catégorie2 Défensif) (Eq zone_a_attaquer Axe)) (EQ système (4-4-1-1 4-5-1)))
(R43 ((Eq Catégorie2 Défensif) (Eq zone_a_attaquer Ailes)) (EQ système 5-2-3))
(R44 ((Eq Catégorie2 Equilibré) (Eq zone_a_attaquer Ailes)) (EQ système 4-3-3_pointeBasse))
(R45 ((Eq Catégorie2 Equilibré) (Eq zone_a_attaquer Axe)) (EQ système (4-2-3-1 4-4-2_aPlat)))
(R46 ((Eq Catégorie2 Offensif) (Eq zone_a_attaquer Axe)) (EQ système (3-5-2 4-2-2-2 4-3-1-2 4-4-2_losange)))
(R47 ((Eq Catégorie2 Offensif) (Eq zone_a_attaquer Ailes)) (EQ système 4-3-3_pointeHaute))
(R48 ((Eq Catégorie2 Très_off) (Eq zone_a_attaquer Axe)) (EQ système (3-4-1-2 4-2-4)))
(R49 ((Eq Catégorie2 Très_off) (Eq zone_a_attaquer Ailes)) (EQ système (3-4-3 4-2-4)))
))

;; Ex de BDF : 
;(setq *BDF '((Score 3) (Temps 70) (Catégorie_adverse Offensif) (zone_a_attaquer Axe)))
;;Résultat attendu : (4-4-1-1 4-5-1)


;(setq *BDF '((Score 0) (Temps 60) (Catégorie_adverse Equilibré) (zone_a_attaquer Ailes)))
  ;; Résultat attendu : (4-3-3_pointeHaute)
      


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Fonctions intermédiaires ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



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
                       ;;si une prémisse n'est pas vérifiée, alors l'ensemble des prémisses n'est pas valide
                       (setq ok NIL)  
                     
                     )
                 ;;si la prémisse n'est pas dans la BDF, alors l'ensemble des prémisses n'est pas valide
                 (setq ok NIL) 
                 
                 )
              )
    ok
        )
    
    )
;; Ex: (validation_premisse  '((>= Score 2) (>=  Temps 50)) *BDF)


(defun ajouter_fait_dans_BDF (Rx BDF) ;;Rx est la règle dont les prémisses sont vérifiées
  (let ((conclusion (caddr Rx)))
    (if (not (type_premisse_dans_BDF conclusion BDF)) ;;vérifie qu'aucune conclusion de ce type n'est pas déjà dans BDF.
        ;On peut faire ça car nos conclusion sont complémentaires et qu'il n'y a aucune intersection entre elles.
        (push (cdr conclusion) BDF)
      )
    )
  )
;;EX : (setq *BDF (ajouter_fait_dans_BDF '(R24 ((Eq Catégorie1 Défensif) (Eq Catégorie_adverse Très_off)) (EQ Catégorie2 Très_def)) *BDF)) 
;/!\ A n'utiliser que si les prémisses sont vérifiées



(defun type_conclusion_dans_BDF (Rx BDF)
  (if (assoc (cadr (caddr RX)) BDF) T
    NIl)
  )
;;Renvoie T si on a déjà une conclusion de ce type, NIL sinon.
;;EX : (type_conclusion_dans_BDF '(R39 ((Eq Catégorie1 Très_off) (Eq Catégorie_adverse Très_off)) (EQ Catégorie2 Offensif)) *BDF)



(defun suivant (sous_liste liste) 
  (if (EQUAL sous_liste (car (last liste))) (car liste)  ;;si la sous-liste est dernier élément de la liste, on retourne au début
    (progn
    (loop until (not (and liste (not (EQUAL (car liste) sous_liste)))) 
      do (pop liste)   ;;on parcourt la liste jusqu'à tomber sur la sous-liste
      )
    (pop liste) ;;on dépasse la sous-liste
    (pop liste) ;;on renvoit l'élément juste derrière
      )
    )

  )
;;Cette fonction nous permet de ne pas avoir besoin que la BDR soit rangée par type de conclusion

;;Ex : (suivant '(R20 ((Eq Catégorie1 Défensif) (Eq Catégorie_adverse Très_def)) (EQ Catégorie2 Equilibré)) *BDR*)
;(suivant '(R49 ((Eq Catégorie2 Très_off) (Eq zone_a_attaquer Ailes)) (EQ système (3-4-3 4-2-4))) *BDR*)


(defun initBDF ()
  (let ( (BDF '()) (Score NIL) (Temps NIL) (zone_a_attaquer NIL) (agressivité_adverse NIL))
    (print "Temps écoulé : ")
    (setq Temps (read))
    (loop until (not (or (not (numberp Temps)) (> Temps 90) (< Temps 0) ))
      do (print "ERREUR. Entrez un temps écoulé valide : ")
      (setq Temps (read))
      )
    
    (print "Ecart au score (votre équipe - équipe adverse) : ")
    (setq Score (read))
    (loop until (numberp Score)
      do (print "ERREUR. Entrez un écart au score (votre équipe - équipe adverse) valide : ")
      (setq Score (read))
      )
    
    (print "Agressivité de l'adversaire : ")
    (print "1 : Très défensif. ")
    (print "2 : Défensif.")
    (print "3 : Equilibré.")
    (print "4 : Offensif.")
    (print "5 : Très offensif.")
    (setq agressivité_adverse (read))
    
    (loop until  (member agressivité_adverse '(1 2 3 4 5))
      do (print "ERREUR. Entrez une agressivité de l'adversaire valide: ")
      (setq agressivité_adverse (read))
      )
    (if (= agressivité_adverse 1) 
        (setq agressivité_adverse 'Très_def)
      (if (= agressivité_adverse 2)
          (setq agressivité_adverse 'Défensif)
        (if (= agressivité_adverse 3)
            (setq agressivité_adverse 'Equilibré)
          (if (= agressivité_adverse 4)
              (setq agressivité_adverse 'Offensif)
            (if (= agressivité_adverse 5)
                (setq agressivité_adverse 'Très_off)
              )
            )
          )
        )
      )
    
    (print "Zone à attaquer : ")
    (print "1 : Axe.")
    (print "2 : Ailes.")
    (setq zone_a_attaquer (read))
    
    (loop until (member zone_a_attaquer '(1 2))
      do (print "ERREUR. Entrez une zone à attaquer valide : ")
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
    (push (list 'Catégorie_adverse agressivité_adverse) BDF)
    (push (list 'zone_a_attaquer zone_a_attaquer) BDF)
    )
  )

    

    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Rappel des fonctions :


;type_premisse_dans_BDF (premisse BDF): retourne le fait de la BDF si la premisse est du même type, NIL sinon
;validation_premisse (liste_p BDF): retourne T si les prémissens sont validées par la BDF, Nil sinon
;ajouter_fait_dans_BDF (Rx BDF) : renvoit la BDF avec la conclusion de RX dedans
;type_conclusion_dans_BDF (Rx BDF) : retourne T si BDF contient déjà un fait du même type que la conclusion de Rx
;suivant (sous_liste liste) : retourne l'élément suivant dans la liste
;initBDF : demande à l'utilisateur les valeurs pour initialiser la BDF



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FONCTION PRINCIPALE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Version sans chercher à supprimer les règles inutiles.

(defun moteur (BDR)
  (let ((Regle (car BDR)) (BDF (initBDF)))
    
    (loop until (assoc 'système BDF)
      do (if (not (type_conclusion_dans_BDF Regle BDF))
          (if (validation_premisse (cadr Regle) BDF)
              (setq BDF (ajouter_fait_dans_BDF Regle BDF))
            )
        )
      (setq Regle (suivant Regle BDR))
      )
    (print "Systèmes conseillés : ")
    (print (cadr (assoc 'système BDF)))
    )
    )
    
    
  

(moteur *BDR*)





