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
;;Shop Menu
;;
;;-----------------------------------------------------
;;-----------------------------------------------------

;Pointers

org $C3C00E
	dw #shopweapon
	dw #shoparmor
	dw #shopitem
	dw #shoprelic
	dw #shopvendor
	
warnpc $C3C019

org $C3B6F2
	LDY #buy_sell
org $C3B77b
	LDY #buy_sell
org $C3B7D5
	LDY #buy_sell
org $C3B939
	LDY #buy_sell

org $C3b961
	dw #GP1
	
org $c3bbc4
	dw #GP2
	
org $C3C2E5
	dw #Owned
	
org $C3C2EB
	dw #Equipped
	
org $C3BB44
	dw #Bat_Pwr
	
org $C3BB22
	dw #shopDefense
	
org $c3BB28
	dw #ellipsis
	
org $c3BB4A
	dw #ellipsis


org $C3B782
	dw #Can_help
org $C3B940
	dw #Can_help
	
org $C3B868
	dw #How_many_buy
	
org $C3B7DC
	dw #Watcha_got

org $C3B666
	dw #How_many_sell
	
org $C3B606
	dw #Bye
org $C3B744
	dw #Bye
	
;org $C3B827
;	dw #needmoregp
	
;org $C3B848
;	dw #toomany
	
;org $C3B802
;	dw #oneplenty

;Text data

org $C3C2FC
shopweapon:
	db $11,$79,"Armas",$00
shoparmor:
	db $0d,$79,"Armadura",$00
shopitem:
	db $0f,$79,"Objetos",$00
shoprelic:
	db $0d,$79,"Reliquias",$00
shopvendor:
	db $0d,$79,"Vendor",$00 ;Inactive?
	
buy_sell:
	db $0f,$7a,"COMPRA   VENTA",$00

GP1:
	db $41,$7a,"G",$00
GP2:
	db $2b,$7b,"G",$00
Owned:
	db $b3,$7a,"Tienes:",$00
Equipped:
	db $b3,$7b,"Equipados:",$00
Bat_Pwr:
	db $8f,$7b,"Ataque",$00
shopDefense:
	db $8f,$7b,"Defensa",$00
ellipsis:
	db $a5,$7b,$c7,$00	;"..."
Can_help:
	db $23,$79,$7e,"Quieres algo?",$00
How_many_buy:
	db $23,$79,$7e,"Cuantos?",$00
Watcha_got:
	db $23,$79,$7e,"Me vendes algo?",$00
How_many_sell:
	db $23,$79,$7e,"Cuantos?",$00
Bye:
	db $23,$79,$7f,"Adios!         ",$00
;needmoregp:
;	db $1f,$79,"You need more GP",$be,$00 ;Inactive
;toomany:
;	db $1f,$79,"Too many",$be,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00 ;Inactive
;oneplenty:
;	db $1f,$79,"One",$c3,"s plenty",$00 ;Inactive


padbyte $FF
pad $C3C405
Warnpc $C3C406

;Pointers

org $C3B98A
	dw #holdy
	
org $c3f885
	dw #shopynamebox
org	$C3F88B
	dw #shopystatbox
org	$C3F891
	dw #shopydescritionbox
org	$C3F897
	dw #shopycharabox	
	
org $C3f905

	LDY #shopvigor				;pointer
	JSR $02f9					;Subroutine that print letter
	LDY #shopspeed				;Speed pointer
	JSR $02f9
	LDY #shopstamina			;Stamina pointer
	JSR $02f9
	LDY #shopmagic
	JSR $02f9
	LDY #shopstatdefense
	JSR $02f9
	LDY #shopmdef
	JSR $02f9
	LDY #shopevade				;Evade pointer
	JSR $02f9
	LDY #shopmevade				;M.Evade pointer
	JSR $02f9
	LDY #shopattack
	JSR $02f9


org $C3F9E4
	dw #shopatthyphens
org	$C3FA10
	dw #shopdefhyphens		;Defense hyphens pointer
org $C3FA16
	dw #shopmdefhyphens		;Magic Defense hyphens pointer

org $C3FA1E
	dw #shopquestionmarks


;Text data

org $C3FB0A

holdy:
	db $23,$79,"Y>por>detalles:",$00
shopvigor:
	db $0d,$82,"Vigor",$00
shopspeed:
	db $0d,$83,"Veloc.",$00
shopstamina:
	db $8d,$83,"Resist.",$00
shopmagic:
	db $8d,$82,"Magia",$00
shopstatdefense:
	db $2b,$82,"Defensa",$00
shopmdef:
	db $2b,$83,"Def.Ma.",$00
shopevade:
	db $ab,$82,"Evasi#n",$00
shopmevade:
	db $ab,$83,"Eva.Ma.",$00
shopattack:
	db $2b,$81,"Ataque",$00
shopquestionmarks:
	db $3f,$81,$bf,$bf,$bf,$00		;Question marks 
shopatthyphens:
	db $43,$81,$c4,$00				;Attack hyphens
shopdefhyphens:
	db $43,$82,$c4,$00				;Defense hyphens
shopmdefhyphens:
	db $43,$83,$c4,$00				;M.Defense hyphens

shopynamebox: 
	db $8b,$71,$1c,$06				;BCG
shopystatbox:
	db $0b,$75,$1c,$06				;BCG
shopydescritionbox:
	db $8b,$70,$1c,$02				;BCG
shopycharabox:
	db $8b,$73,$1c,$04				;BCG
	
;data from item_menu.asm	
	
canbeused:
	db $8f,$7d,"Puede usar",$00
	
itemresist:
	db $8d,$7b,"Resiste:",$00

itemabsorb:
	db $0d,$7c,"Absorbe:",$00

itemnullify:
	db $8d,$7c,"Anula:",$00

itemweakness:
	db $0d,$7d,"D&bil a:",$00
	
;stop data from item_menu.asm

padbyte $ff
pad $C3FC1F
warnpc $C3FC1F

	
;Buy_Sell_Exit Cursor value	
org $C3B898
	dw $0102	;Second value determine how many choiche you have
	dw $3407	;Buy
	dw $344f	;Sell
	dw $3470	;Exit

;Shop menu box windows

org $C3BC1B
;;	First value: Start print position
;;	Second value: Height
;;	Third value: Lenght

	db $8b,$58,$09,$02		;main menu kind of shop box
	db $a1,$58,$11,$02		;main menu question box
	db $8b,$59,$10,$02		;main menu buy sell box
	db $af,$59,$0a,$02		;main menu gp box
	db $8b,$5a,$1c,$10		;main menu big box

	db $8b,$60,$09,$02		;Buy menu kind of shop box
	db $a1,$60,$11,$02		;Buy menu question box
	db $8b,$61,$1c,$0c		;Buy menu object box
	db $0b,$65,$1c,$06		;Buy menu chara box

	db $8b,$68,$09,$02		;main menu kind of shop box
	db $a1,$68,$11,$02		;main menu question box
