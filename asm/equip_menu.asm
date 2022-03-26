arch 65816
hirom

;;-----------------------------------------------------
;;-----------------------------------------------------
;;
;;$C3FDD1-$C3FFFF Free Space
;;
;;$C3FDD1:
;;15 bytes used by save menu (New Game -> Nuova Partita)
;;
;;$C3FDE1:
;;10 bytes used by main menu (Order -> Schiera)
;;
;;-----------------------------------------------------
;;-----------------------------------------------------

table "menu.tbl",ltr ; Tabella per le stringhe di testo

;;-----------------------------------------------------
;;-----------------------------------------------------
;;
;;Equip menu
;;
;;-----------------------------------------------------
;;-----------------------------------------------------

;;--------------------------------------------------
;;Cursor position
;;	First: Y Assis
;;	Second value: X Assis
;;--------------------------------------------------

org $C38E64
	dw $0840	;EQUIP
	dw $0878	;REMOVE
	dw $08b8	;EMPTY

;Pointers
org $C3A2A6
	dw #ActioncursorEQUIP
	dw #ActioncursorREMOVE
	dw #ActioncursorEMPTY

org $C3A314
ActioncursorEQUIP:
	db $9D,$78,"PONER",$00

ActioncursorREMOVE:
	db $AB,$78,"QUITAR",$00

ActioncursorEMPTY:
	db $BB,$78,"VACIO",$00

warnpc $C3A32D

;;--------------------------------------------------
;;Equip menu stats pointers
;;--------------------------------------------------

org $C390a0
	ldx #equistatsandarrow						;Start pointer offset
	ldy #equipstasandaccent-equistatsandarrow	;Pointers to read (2 bytes each pointer)

org $c390a9
	ldx #equipstasandaccent						;Start pointer offset
	ldy #$0008									;Pointers to read (2 bytes each pointer)

;pointers
;org $C39EE4
;	dw #rhand

;org $C39f02
;	dw #lhand
	
;org $c39415
;	dw #headj



;Equippable item 
org $c3a2b4
	db $8d,$7a,$ff,"Mano-D",$ff,$ff,$ff,$ff,$ff,$ff,$00
	db $ab,$7a,$ff,"Mano-I",$ff,$ff,$ff,$ff,$ff,$ff,$00
	db $0d,$7b,$ff,"Cabeza",$ff,$ff,$ff,$ff,$ff,$ff,$00
	db $2b,$7b,$ff,"Cuerpo",$ff,$ff,$ff,$ff,$ff,$ff,$00
	db $8d,$7b,$ff,"Reliquia",$ff,$ff,$ff,$ff,$00
	db $ab,$7b,$ff,"Reliquia",$ff,$ff,$ff,$ff,$00

warnpc $C3A314
;Equip menu Pointer

org $C3A34D	
equistatsandarrow:
	dw #equipvigor
	dw #equipstamina
	dw #equipmagic
	dw #equipevade
	dw #equipspeed
	dw #equipmevade
	dw #arrow
	dw #arrow2
	dw #arrow3
	dw #arrow4
	dw #arrow5
	dw #arrow6
	dw #arrow7
	dw #arrow8
	dw #arrow9

equipstasandaccent:	
	dw #equipspeed
	dw #equipattack
	dw #equipdefense
	dw #equipmdefense
	
;;--------------------------------------------------
;;Equip menu stats data
;;--------------------------------------------------


equipvigor:
	db $A9,$7C,"Vigor",$00
	
equipstamina:
	db $29,$7E,"Resist",$C5,$00
	
equipmagic:
	db $29,$7D,"Magia",$00
	
equipevade:
	db $A9,$7F,"Evasi#n",$00
	
equipmevade:
	db $A9,$80,"Eva.Ma.",$00
	
arrow:
	db $BD,$7C,$D5,$00
	
arrow2:
	db $3D,$7D,$D5,$00

arrow3:
	db $BD,$7D,$D5,$00
	
arrow4:
	db $3D,$7E,$D5,$00
	
arrow5:
	db $3D,$7F,$D5,$00
	
arrow6:
	db $BD,$7F,$D5,$00
	
arrow7:
	db $BD,$7E,$D5,$00
	
arrow8:
	db $3D,$80,$D5,$00
	
arrow9:
	db $BD,$80,$D5,$00
	
equipspeed:
	db $A9,$7D,"Veloc.",$00
	
equipattack:
	db $A9,$7E,"Ataque",$00
	
equipdefense:
	db $29,$7F,"Defensa",$00
	
equipmdefense:
	db $29,$80,"Def.Ma.",$00

padbyte $FF
pad $C3A424
warnpc $C3A424