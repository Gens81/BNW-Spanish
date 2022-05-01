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
;;
;;$C3FDF7:
;;9 bytes used by skills menu (Needed -> Servono)
;;-----------------------------------------------------
;;-----------------------------------------------------

table "menu.tbl",ltr ; Tabella per le stringhe di testo


;;-----------------------------------------------------
;;-----------------------------------------------------
;;
;;Misc.
;;org C2FBBC - 7 free bytes
;;Row moved on that spot due to length needs
;;-----------------------------------------------------
;;-----------------------------------------------------
	
;Insert a name

org $C368e3
	db $1b,$41,"Introduce su nombre.",$00
	

;;-----------------------------------------------------	
;;
;;Battle menu section
;;
;;-----------------------------------------------------

;Spell right side cursor position
org $C18281
	db $58
	
;MP Needed section

org $C140F5
	cpx #$0017			;How many chara print
org $C140CB
	lda needed_chara,x	;Chara set pointer

;org $C13FCB				;Cleaning old data
;padbyte $ff
;pad $C13FDF

org $C3FFA0
needed_chara:
	db $b4,$b5,$b6,$b7,$b8,$b9,$ba,$bb,$bc,$bd	;0-9 numbers
	db $8c										;M
	db $87										;H
	db $8f										;P
	db $c0										;/
	db $82										;C
	db $a8										;o
	db $ac										;s
	db $ad										;t
	db $9e										;e
	db $ff										;_
	db $ff										;_



org $c149bc
	cpx #$0007    ;Compare x - number letters to be printed

org $c1498f
	lda $c14a37,x ;Load MP you have from the hundreds unity
	sta $5883,y   ;Store on $7e5883
	lda $c14a4c,x ;Load blank tile that overwite MP numbers
	sta $5884,y   ;Store on $7e5884
	lda $c14a3e,x ;Load how many MP you need 3e
	sta $5903,y   ;Store on $7e5903 
	lda $c14a53,x ;Load blank tile that overwite MP 53
	sta $5904,y   ;Store on $7e5906
	lda $c14a45,x ;Load Needed word 45
	sta $5983,y   ;Store on $7e5985
	lda $c14a5a,x ;Load blank tile the overwrite 5a
	sta $5984,y   ;Store on $7e5986
	
;org $c1055a
;	sta $5da7     ;[7e5d27]
;	lda #$02      ;        
;	sta $5da8     ;[7e5d28]
;	sta $5da6     ;[7e5d26]
;	sta $5da4     ;[7e5d24]
;	lda $41       ;[000041]
;	clc           ;        
;	adc #$08      ;        
;	sta $5da5     ;[7e5d25]
;	lda $40       ;[000040]
;	clc           ;        
;	adc #$08      ;        
;	sta $5da3	  ;[7e5d23]
;	cmp #$08      ;        
;	bne $0584     ;[c10584]
;	lda #$ff      ;        
;	sta $5ca3     ;[7e5d23]
;	stz $5ca4     ;[7e5d24]


org $C14A37
;Please note that if in the previous org you set cpx #$0008
;the successive lines must be 8 bytes lenght

db $08,$08,$08,$15,$08,$08,$08	;xxx/xxx
db $08,$08,$08,$ff,$14,$12,$ff	;xxx_MP_
db $1b,$16,$17,$18,$19,$1a,$1b	;_Needed
db $02,$02,$02,$02,$02,$02,$02	;
db $02,$02,$02,$00,$02,$02,$00	;
db $02,$02,$02,$02,$02,$02,$02	;

;Esper MP needed
org $C2E093 
	db "P"
	skip 1
	db "M"
	
;D/S-Hand + Row&Def.
;Row&Def windows
;org $C2DDC2
;	db $08,$04,$13,$8D	;width, hight & $7E[8D13] ram address
;
;org $C2DF32
;	db $43,$5D,$07	;Row only 1st value is important
;	skip 1
;	db $89,$5D,$07	;Def. only 1st value is important
;
;org $C2DFBE
;Info: more difference between 1st value from the previous org
;needs for make blank the beneath letters
;5th value for more blank space

;Row 
;	db $2b,$5d,$15,$8d,$10,$00,$05,$00	;1st row
;	db $2b,$5d,$95,$8d,$10,$00,$05,$00	;2nd row
;	db $2b,$5d,$15,$8e,$10,$00,$05,$00	;3rd row
;	db $2b,$5d,$95,$8e,$10,$00,$05,$00	;4th row

;Def.
;	db $73,$5d,$21,$8d,$12,$00,$05,$00	;1st row
;	db $73,$5d,$a1,$8d,$12,$00,$05,$00	;2nd row
;	db $73,$5d,$21,$8e,$12,$00,$05,$00	;3rd row
;	db $73,$5d,$a1,$8e,$12,$00,$05,$00	;4th row

;Def cursor
org $C17E57
	lda #$70	;Def. finger position fast cmd
	

;Row & Def easy cmd btl position
;org $C2E016               
;	db $35,$5d,$19,$8d,$0e,$00,$05,$00	;Row
;	db $7b,$5d,$2f,$8d,$0e,$00,$05,$00	;Def.

;Pointers

org $C2E0A6
	dw #rhand
	skip 2
	dw #row
	dw #def

org $C2E165
def:
	db "  Def.",$00
rhand:
	db $05,$03,"Mano-D"
	db $05,$08,"Mano-I"
	db $05,$07,$00

org $C2FBBC
row:
	db "  Fila",$00
warnpc $C2FBC6

;;-----------------------------------------------------
;;
;;Colosseum
;;
;;-----------------------------------------------------
;Items pointer
org $C3AD83
	ldy #select_an_item

;Items data	
org $C3AD9A
	db $11,$79,"Coliseo",$00
select_an_item:
	db $23,$79,"Elige un objeto",$00

;Change words position
org $C3B251
	db $EB,$78		;Right item
org $C3B261
	db $CD,$78		;Left item

;Change box dimension
org $C3B33F
	db $8b,$58,$0d,$01	;Left Item
	db $a9,$58,$0d,$01	;Right Item

;Choose the challenger data
org $C3B40F
	db $17,$7d,"Elige quien lucha",$00

;Moving the challenger data
org $c3aefa
	ldy #$7c51

org $C3B427
	db $cd,$78,"?????????????",$00

;Fix gradient scale

org $D4CB42
;upper side
	dw $e001,$e702,$e603,$e503,$e403,$e302,$e203,$e103
	dw $e003,$e102,$e201,$e301,$e401,$e501,$e601,$e701

;bottom side
	dw $e070,$ea01,$e903,$e804,$e704,$e604,$e504,$e404
	dw $e304,$e204,$e104,$e004,$e104,$e204,$e304,$e404
	dw $e504,$e604,$e704,$e804,$e904,$ea02
