arch 65816
hirom


table "menu.tbl",ltr ; Tabella per le stringhe di testo

;;-----------------------------------------------------	
;;
;;Lineup notes: every string must be long 22 tiles
;;Form team & final select a party
;;
;;-----------------------------------------------------

;stat data
org $C379CF
	db $6d,$3a,"NV",$00
	db $ed,$3a,"PS",$00
	db $6d,$3b,"PM",$00

org $C3F2CF
	db $7B,$3A,"NE",$00

org $C37598
	
;;----------------------------------------------------
;;----------------------------------------------------
;;Randomizer OFF
;;----------------------------------------------------
;;----------------------------------------------------
;pointers
org $C372E1	;number for numbers of groups needed pointer
	ldx #$392f
	
org	$c3756c	;nuber for how many groups you must form
	ldx #$392b

;org $C37566
;	dw #form
org $C37554
	dw #lineup
org $C372dc
	dw #youneed
org $c372ea
	dw #noone
	
;Lineup & form a team	
org $C37A95

form:
	db $1f,$39,"Elige   grupo(s)",$ff,$ff,$ff,$00
lineup:
	db $0d,$39,"Grupo",$00
youneed:
	db $1f,$39,"Necesitas   grupo",$00 ; You need 3 group
noone:
	db $1f,$39,"No has elegido",$ff,$ff,$ff,$ff,$00
	
warnpc $C37AE5

;Final Battle selection
org $C3AC84
	dw #_end
	dw #_reset
	dw #select_party

org $C3AC8A
_end:
	db $11,$40,"Aceptar",$00
_reset:
	db $91,$39,"Reiniciar",$00

warnpc $C3ACAA

org $C3FFBA
select_party:
	db $19,$39,"Eligir grupo",$00

;Windows box

	dw $588b,$0206	;Lineup
	dw $5ccb,$071c	;
	dw $598b,$051c	;
	dw $5b0b,$061c	;
	dw $589b,$0214	;
	dw $5d0b,$0608	;Party 1
	dw $5d1f,$0608	;Party 2
	dw $5d33,$0608	;Party 2

;;----------------------------------------------------
;;----------------------------------------------------
;;Randomizer ON
;;----------------------------------------------------
;;----------------------------------------------------

;----------------------------------------------------
;
;$C3AC98:
;Final Lineup -> Schieramento Finale
;
;$C372CE: 
;Just press start -> Premi start
;
;$C37A97:
;Select leader(s) -> Scegli il/i capo/i
;
;$C37AB9:
;More groups needed! -> Non hai finito!
;
;----------------------------------------------------

;org $C3FFBA
;	dw $3917 : db "Schieramento Finale",$00
;	
;org $C372CE
;	dw $391D : db "Premi start",$00
;	
;org $C37A97 
;	db "Scegli il/i capo/i",$00
;	
;org $C37AB9
;	db "Non hai finito!",$00
;
;org $C37AAE
;	db $0d,$39,"Scelta",$00
