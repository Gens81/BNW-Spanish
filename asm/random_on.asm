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
;;Randomizer ON
;;----------------------------------------------------
;;----------------------------------------------------

org $C3AC88
	dw #final_lineup
	
org $C3FFBA
final_lineup:
	dw $3917 : db "Formaci#n final",$00
	
org $C372CE
	dw $391D : db "Pulsa start",$00
	
org $C37A97 
	db "Elige l;der(es)",$00
	
org $C37AB9
	db "No has terminado",$00

org $C37AAE
	db $0d,$39,"Grupo",$00