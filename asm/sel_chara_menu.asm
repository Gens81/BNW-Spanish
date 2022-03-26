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
;;Main and selection charachter menù
;;
;;-----------------------------------------------------
;;-----------------------------------------------------

;;--------------------------------------------------
;;Charachter stats position
;;--------------------------------------------------

;Char 1

org $C3332D
	dw $39A3	;LV
	dw $39E1	;HP
	dw $39EB	;HP MAX
	dw $3A21	;MP
	dw $3A2B	;MP MAX

;Char 2

oRg $C33379
	dw $3B23	;LV
	dw $3B61	;HP
	dw $3B6B	;HP MAX
	dw $3BA1	;MP
	dw $3BAB	;MP MAX

;Char 3

org $C333C5
	dw $3CA3	;LV
	dw $3CE1	;HP
	dw $3CEB	;HP MAX
	dw $3D21	;MP
	dw $3D2B	;MP MAX
	
;Char 4
ORG $C33411
	dw $3E23	;LV
	dw $3E61	;HP
	dw $3E6B	;HP MAX
	dw $3EA1	;MP
	dw $3EAB	;MP MAX
	
;;--------------------------------------------------
;;Data that control main menu pointers
;;--------------------------------------------------
;First part of sub menu selection
	
;Chara pointers

org $c33311
	ldx #chara1slashes					;Start pointer address Double slash Chara1
	stx $f1
	ldy #chara2slashes-chara1slashes	;Pointers to read (2 bytes each pointer)

org $C3335D
	ldx #chara2slashes					;Start pointer addressDouble slash Chara2
	stx $f1
	ldy #chara3slashes-chara2slashes	;Pointers to read (2 bytes each pointer)

org $C333A9
	ldx #chara3slashes					;Start pointer addressDouble slash Chara3
	stx $f1
	ldy #chara4slashes-chara3slashes	;Pointers to read (2 bytes each pointer)
	
org $C333F5
	ldx #chara4slashes					;Start pointer addressDouble slash Chara4
	stx $f1
	ldy #chara1stat-chara4slashes		;Pointers to read (2 bytes each pointer)

;Chara stats pointers

org $C332FD
	ldx #chara1stat						;Start pointer address 
	ldy #chara2stat-chara1stat			;Pointers to read (2 bytes each pointer)
	
org $C33349
	ldx #chara2stat						;Start pointer address 
	ldy #chara3stat-chara2stat			;Pointers to read (2 bytes each pointer)
	
org $C33395
	ldx #chara3stat						;Start pointer address 
	ldy #chara4stat-chara3stat			;Pointers to read (2 bytes each pointer)
	
org $C333E1
	ldx #chara4stat						;Start pointer address 
	ldy #equip_config-chara4stat		;Pointers to read (2 bytes each pointer)

;Second part of menu sub-menu

org $C33204
	ldx #equip_config					;Start pointer address 
	ldy #load_section-equip_config		;Pointers to read (2 bytes each pointer)
	
;Load game section "This data? - Yes, no"

org $c331e9
	ldx #load_section					;Start pointer address 
	ldy #save_section-load_section+2	;+2 because the accent are shared between save and load section Pointers to read (2 bytes each pointer)

	
;Save section "Erasing data. Okay?"

org $c331DB
	ldx #save_section		;Start pointer address 
	ldy #$000C				;Pointers to read (2 bytes each pointer)
	


	
;;--------------------------------------------------
;;Windows & cursor position
;;
;;	First value: Start print position
;;	Second value: Height
;;	Third value: Lenght
;;--------------------------------------------------

org $C331BB
	db $B5,$58,$07,$0D	;Finestra delle ozpione nel menu
	db $75,$5C,$07,$02	;Finestra del tempo
	db $75,$5D,$07,$05	;Finestra dei soldi e dei passi
	
;;--------------------------------------------------
;;Cursor position
;;	First: Y Assis
;;	Second value: X Assis
;;--------------------------------------------------

org $C32F8A
	dw $12A7    	;Item
	dw $21A7    	;Skills
	dw $30A7		;Equip
	dw $3FA7    	;Relic
	dw $4EA7    	;Status
	dw $5DA7    	;Config
	dw $6CA7    	;Save
	
;Finger position Yes-No
org $C315E3

	db $60,$01,$00
	db $02,$01		;First value set horizontal-vertical move
	db $af,$44		;Yes finger position
	db $cf,$44		;No finger position
;;-------------------------------------------------
;;Main menu pointers
;;-------------------------------------------------

org $C3321B
	dw #Save
	
org $C33226
	dw #Colon

org $C33239
	dw #Gp
	
org $C33723
	dw #Time
	dw #Steps
	dw #Order
	
item_abilitaccent:
	dw #Item
	dw #Skills
	dw #Review
	dw #Status
	
chara1slashes:
	dw #slash1
	dw #slash2
chara2slashes:
	dw #slash3
	dw #slash4
chara3slashes:
	dw #slash5
	dw #slash6
chara4slashes:
	dw #slash7
	dw #slash8

chara1stat:
	dw #LV1
	dw #HP1
	dw #MP1
chara2stat:
	dw #LV2
	dw #HP2
	dw #MP2
chara3stat:
	dw #LV3
	dw #HP3
	dw #MP3
chara4stat:
	dw #LV4
	dw #HP4
	dw #MP4
	
equip_config:
	dw #Equip
	dw #Config

load_section:
	dw #Yes
	dw #No
	dw #Thiss
	dw #dataint
	dw #carichi
save_section:	
	dw #vuoi
	dw #Yes
	dw #No
	dw #Erasing
	dw #dataquestion


LV1:
	db $9B,$39,"NV",$00

HP1:
	db $DB,$39,"PS",$00
	
MP1:
	db $1B,$3A,"PM",$00
	
slash1:
	db $E9,$39,"/",$00 

slash2:	
	db $29,$3A,"/",$00

LV2:
	db $1B,$3B,"NV",$00

HP2:
	db $5B,$3B,"PS",$00

MP2:
	db $9B,$3B,"PM",$00

slash3:
	db $69,$3B,"/",$00

slash4:
	db $A9,$3B,"/",$00 

LV3:
	db $9B,$3C,"NV",$00

HP3:
	db $DB,$3C,"PS",$00

MP3:
	db $1B,$3D,"PM",$00

slash5:
	db $E9,$3C,"/",$00

slash6:
	db $29,$3D,"/",$00

LV4:
	db $1B,$3E,"NV",$00

HP4:
	db $5B,$3E,"PS",$00

MP4:
	db $9B,$3E,"PM",$00

slash7:
	db $69,$3E,"/",$00

slash8:
	db $A9,$3E,"/",$00

Item:
	db $37,$79,"Objetos",$00
	
Skills:
	db $B7,$79,"Habil.",$00
	
Equip:
	db $37,$7A,"Equipar",$00
	
Review:
	db $B7,$7A,"Vista",$00
	
Config:
	db $B7,$7B,"Config",$00
	
Save:
	db $37,$7C,"Guardar",$00

Time:
	db $B7,$7C,"Tiempo",$00

Colon:
	db $FF,$7C,":",$00

Steps:
	db $B7,$7D,"Pasos",$00

Gp:
	db $77,$7E,"Guiles",$00

Yes:
	db $B9,$7A,"S;",$00

No:
	db $C1,$7A,"No",$00

Thiss:
	db $b7,$79,$7e,"Cargar",$00

dataint:
	db $37,$7a,"esta?",$00

Erasing:
	db $b7,$79,$7e,"Borrar",$00

dataquestion:
	db $37,$7a,"datos?",$00

	
padbyte $FF
pad $C33858
warnpc $c33858

org $C3371B		;Wounded
	db "KO"
padbyte $ff
pad $C33722

;Status, located in other bank (previously Review)

org $C39f1b
	
Status:
	db $37,$7B,"Estado",$C00
	
warnpc $C39f24

;Order, need to be moved in other bank

org $c3fde2
Order:
	db $3b,$81,"Orden",$00
carichi:
	db $37,$79,"",$00
vuoi:
	db $3b,$79,"",$00

;New original data from BNW
	
org $C3F29F
	db $A9,$39,"NE",$00	;Char 1
	
org $C3F2A7
	db $29,$3B,"NE",$00 ;Char 2
	
org $C3F2AF
	db $A9,$3C,"NE",$00 ;Char 3
	
org $C3F2B7
	db $29,$3E,"NE",$00 ;Char 4

