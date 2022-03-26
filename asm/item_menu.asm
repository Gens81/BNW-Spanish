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

table "menu.tbl", ltr ; Tabella per le stringhe di testo

;;-----------------------------------------------------
;;-----------------------------------------------------
;;
;;Item menu
;;	Note:
;;	4 accents, can be used, resist, absorb, nullify and
;;	weaknes pointer are here but the text data are
;;	located in the shop menu asm due to a better
;;	arrange
;;-----------------------------------------------------
;;-----------------------------------------------------

;;--------------------------------------------------
;;Item box dimension
;;	First value: Start print position
;;	Second value: Height
;;	Third value: Lenght
;;--------------------------------------------------

org $C37E13
	db $8B,$58,$07,$02	;Item window
	db $9d,$58,$13,$02	;Use_Arrange_Rare window
	
;;--------------------------------------------------
;;Cursor position
;;	First: Y Assis
;;	Second value: X Assis
;;--------------------------------------------------

org $C37D9D

;Use
dw $1650

;Arrange
dw $1680

;Rare
dw $16B8

;;-------------------------------------------------
;;
;;Item menu data
;;
;;------------------------------------------------

;Pointers
org $C38553
	LDA #$7Da3	;position of item name in double-click menu
	
org $C385BD
	dw #itemcolon	;colon of item name pointer
	
;Pointers manager

org	$C38678	;Pointers from Vigor
	ldx #$8d39	;Start pointer offset
	ldy #$001c	;Pointers to read (2 bytes each pointer)

org	$C38685	;Pointers from Speed
	ldx #$8d55	;Start pointer offset
	ldy #$000a	;Pointers to read (2 bytes each pointer)

org	$C3873A	;Pointers from Resist
	ldx #$8d5f	;Start pointer offset
	ldy #$0008	;Pointers to read (2 bytes each pointer)

org $C387C1
	dw #itemuquestionmarks


org $C38D10
	dw #USE
	dw #ARRANGE
	dw #RARE

;Data	
;org $C38D16
	db $0d,$79,"Objetos",$00
	
USE:
	db $21,$79,"USAR",$00
	
ARRANGE:
	db $2d,$79,"ORDEN",$00

RARE:
	db $3b,$79,"CLAVE",$00

itemcolon:
	db $c1,$00
	
;Pointers

	dw #itemvigor	;$C38D45
	dw #itemstamina
	dw #itemmagic
	dw #itemevade
	dw #itemmevade
	dw #item2points
	dw #item2points2
	dw #item2points3
	dw #item2points4
	dw #item2points5
	dw #item2points6
	dw #item2points7
	dw #item2points8
	dw #item2points9
	dw #itemspeed	;$C38D61
	dw #itemattack
	dw #itemdefense
	dw #itemmdefense
	dw #canbeused
	dw #itemresist
	dw #itemabsorb
	dw #itemnullify
	dw #itemweakness

itemuquestionmarks:
	db $43,$86,$bf,$bf,$bf,$00	;question marks

;Data
	
itemvigor:
	db $2f,$84,"Vigor",$00
itemstamina:
	db $af,$85,"Resist.",$00
itemmagic:
	db $af,$84,"Magia",$00
itemevade:
	db $2f,$87,"Evasi#n",$00
itemmevade:
	db $2f,$88,"Eva.Ma.",$00
item2points:
	db $3f,$84,$d3,$00	;".."
item2points2:
	db $bf,$84,$d3,$00	;".."
item2points3:
	db $3f,$85,$d3,$00	;".."
item2points4:
	db $bf,$85,$d3,$00	;".."
item2points5:
	db $3f,$86,$d3,$00	;".."
item2points6:
	db $bf,$86,$d3,$00	;".."
item2points7:
	db $3f,$87,$d3,$00	;".."
item2points8:
	db $bf,$87,$d3,$00	;".."
item2points9:
	db $3f,$88,$d3,$00	;".."
itemspeed:
	db $2f,$85,"Veloc.",$00
itemattack:
	db $2f,$86,"Ataque",$00
itemdefense:
	db $af,$86,"Defensa",$00
itemmdefense:
	db $af,$87,"Def.Ma.",$00
	
warnpc $C38DF0



;Bushido, Runic, 2-Hand pointers, elemental attack

org $C3F857
	dw #elementalattack

org $C38771
	dw #itembushido

org $C38755
	dw #itemrunic
	
org $C38763
	dw #item2hand


org $C38E1D
elementalattack:
	db $8d,$7B,"Elemento",$c1,$00

itembushido:
	db $2f,$82,"Bushido",$00

itemrunic:
	db $af,$82,"S;ntesis",$00

item2hand:
	db $2f,$83,"2 manos",$00
	
;;-----------------------------------------------
;;Inside item submenu
;;-----------------------------------------------

org $C38A4C
	dw #Itemowned
	
org $C3fe04
Itemowned:
	db $0d,$7a,"Tienes:",$00

;Windows sizes
;	first value x start assis print
;	second value y start assis print
;	third value wide sizes
;	fourth value height sizes
 
org $C38A3B
	db $9f,$58,$12,$18	;Stats window
	db $8b,$58,$0d,$02	;Item window
	db $8b,$59,$08,$03	;Owned window
	
org $C38A29
	LDY #$FFB6	;Code that determine the stats position (in pixel)

