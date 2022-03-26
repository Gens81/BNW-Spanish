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
;;$C3FDF0:
;;7 bytes by item menu (Rare -> Rari)

;;-----------------------------------------------------
;;-----------------------------------------------------

table "menu.tbl",ltr ; Tabella per le stringhe di testo

;;-----------------------------------------------------
;;-----------------------------------------------------
;;
;;Status menu
;;
;;-----------------------------------------------------
;;-----------------------------------------------------
;--------------------------------------------------
;Windows
;
;	First value: Start print position
;	Second value: Height
;	Third value: Lenght
;--------------------------------------------------

org $C35f79
	db $4b,$5d,$1c,$05	;Bottom box
	db $af,$5b,$07,$07	;Technique Box
	db $8b,$58,$1c,$09	;Top box
	db $c7,$58,$00,$12	;Middle box
	db $87,$60,$07,$12	;???
	
	
;Pointers manager
org $c35d60	;Blue text
	ldx #statusstatsandaccent			;Start pointer address
	ldy #charapoint-statusstatsandaccent	;Pointers to read (2 bytes each pointer)

org $C35D52	;Blue text
	ldx #charapoint						;Start pointer address
	ldy #slashes-charapoint				;Pointers to read (2 bytes each pointer)

org $C35D45	;White text
	ldx #slashes							;Start pointer address
	ldy #statusstatssecondpart-slashes	;Pointers to read (2 bytes each pointer)
	
org $C35d6d	;Blue text
	ldx #statusstatssecondpart			;Start pointer address
	ldy #$000C							;Pointers to read (2 bytes each pointer)


;Pointers table
org $C36437
statusstatsandaccent:
	dw #statusvigor
	dw #statusstamina
	dw #statusmagic
	dw #statusevade
	dw #statusmagicevade

charapoint:
	dw #statusLV
	dw #statusHP
	dw #statusPM

slashes:
	dw #statusslash
	dw #statusslash2

statusstatssecondpart:
	dw #statusspeed
	dw #statusattack
	dw #statusdefense
	dw #statusmagicdefense
	dw #statusexp
	dw #statusnextlv


;Data

statusslash:
	db $ab,$39,$c0,$00

statusslash2:
	db $eb,$39,$c0,$00

statusLV:
	db $5d,$39,"NV",$00
	
statusHP:
	db $9d,$39,"PS",$00
	
statusPM:
	db $dd,$39,"PM",$00
	
statusexp:
	db $cd,$7a,"Exp.",$00
	
statusnextlv:
	db $4d,$7b,"NV sig.",$00
	
statusvigor:
	db $4d,$7c,"Vigor",$00
	
statusmagic:
	db $cd,$7c,"Magia",$00
	
statusspeed:
	db $4d,$7d,"Velocidad",$00
	
statusstamina:
	db $cd,$7d,"Resisten.",$00
	
statusattack:
	db $4d,$7f,"Ataque",$00
	
statusdefense:
	db $cd,$7f,"Defensa",$00
	
statusmagicdefense:	
	db $eb,$7f,"Def.M'gica",$00
	
statusevade:
	db $4d,$88,"Evasi#n",$00
	
statusmagicevade:
	db $6b,$88,"Eva.M'gica",$00

warnpc $C3652D

;Data not in the Status section
;Pointers
org $C3F33f
	dw #nextEL

org $C3f332
	dw #nextELblank

org $C3f277
nextEL:
	db $6b,$7b,"NE sig.",$00

org $C3f287
nextELblank:
	db $6b,$7b,"       ",$00
	
org $c3f2c7
	db $6b,$39,"PE",$00
	
org $c3fc83
	db $eb,$7a,"PE",$00