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
;;
;;-----------------------------------------------------
;;-----------------------------------------------------

table "menu.tbl",ltr ; Tabella per le stringhe di testo

;;-----------------------------------------------------
;;-----------------------------------------------------
;;
;;Config Menu
;;
;;-----------------------------------------------------
;;-----------------------------------------------------

;Pointers manager
org $C338C9
	LDA #$28
	STA $29			;(set text color to yellow)
	LDY #$3BB8
	JSR $02f9  		;(display "Brave New World 2.1.0")
	LDA #$24
	STA $29		 	;(set text color to blue)

org $C338D7			;Blue text
	LDX #bluetextpage1
	LDY #$0012

org $C338E4			;Blue text
	LDX #controllercursor
	LDY #$0004

org $C338F1			;White text
	LDX #fastslow
	LDY #$0004

org $C33919			;Blue text
	LDX #bluetextpage2
	LDY #$0008

org $C33929			;White text
	LDX #rgb_and_abc
	LDY #$000C

org $C33954			;White text
	LDX #colorbars
	LDY #$0006
	
;Data pointer
org $C33BB0
	LDY #expon
org $C33BA8
	dw #expoff

org $C33C56
	dw #cmdwindow
org $C33C4D
	dw #cmdshort
	
org $C33C76
	dw #delayoff
org $C33C7e
	LDY #delayon

org $C33CA1
	dw #stereo
org $C33CAA
	dw #mono
	
org $C33CCC
	dw #reset
org $C33CD5
	dw #cmemory
	
org $C33CF7
	dw #dash
org $C33D00
	dw #walk
	
org $C33D20
	dw #single
org $C33D29
	dw #multiple

org $C33BF7
	dw #msgspeednumbers

org $C340EF
	dw #windownumbers

org $C34002
	dw #magordernumbers
	
org $C34180
	dw #font
org $C34187
	dw #windowcolor
	
;------------------------------	
;Data
;------------------------------

org $c34903 ; from C338E4
;pointer

; 2 blue strings
controllercursor:
	dw #ccontroller
	dw #ccursor
	
;2 whitestrings
fastslow:
	dw #cfast
	dw #cslow

;data

ccontroller:
	db $cF,$3D,"Mando",$00

ccursor:
	db $cF,$3C,"Cursor",$00

cfast:
	db $65,$3A,"R'pido",$00

cslow:
	db $75,$3A,"Lento",$00

;white strings in subroutines
expoff:
	db $e5,$39,"No",$00
expon:
	db $f5,$39,"S;",$00

cmdwindow:
	db $25,$3b,"Normal",$00
cmdshort:
	db $35,$3b,"R'pido",$00
	
delayoff:
	db $e5,$3B,"No",$00
delayon:
	db $f5,$3B,"S;",$00
	
stereo:
	db $65,$3C,"Est&reo",$00
mono:
	db $75,$3C,"Mono",$00

reset:
	db $e5,$3c,"Reinicio",$00
cmemory:
	db $f5,$3C,"Recordar",$00

dash:
	db $65,$3D,"Correr",$00
walk:
	db $75,$3d,"Andar",$00

single:
	db $e5,$3d,"Uno",$00
multiple:
	db $f5,$3D,"Varios",$00
	
msgspeednumbers:	
	db $a5,$3A,"1 2 3 4 5 6",$00
	
;pointers
;9 blue string

bluetextpage1:
	dw #expgain
	dw #expgain2
	dw #battle
	dw #msgspeed
	dw #cmdset
	dw #showdelay2
	dw #showdelay
	dw #sound
	dw #bbutton

;data
expgain2:
	db $8F,$39,"",$00
expgain:
	db $CF,$39,"Ganar Exp.",$00

battle:
	db $4f,$3a,"Mensajes",$00

msgspeed:
	db $8F,$3A,"Batalla",$00

cmdset:
	db $0f,$3b,"Aspecto",$00
	
showdelay2:
	db $8f,$3b,"Retraso",$00

sound:
	db $4F,$3c,"Sonido",$00

	
; 4 blue strings
bluetextpage2:
	dw #magorder
	dw #magorder2
	dw #window
	dw #color

; color selection bars
colorbars:
	dw #bar
	dw #bar2
	dw #bar3

; 6 white strings pointer from C33929
rgb_and_abc:
	dw #letterr
	dw #letterg
	dw #letterbl
	dw #lettera
	dw #letterb
	dw #letterc

magorder:
	db $8f,$41,"Orden",$00
magorder2:
	db $cf,$41,"Magia",$00
	
window:
	db $8f,$43,"Estilo",$00

color:
	db $0f,$44,"Color",$00

lettera:
	db $25,$42,"A",$d3,$00
letterb:
	db $a5,$42,"B",$d3,$00
letterc:
	db $25,$43,"C",$d3,$00

bar:
	db $2d,$45,$f9,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$fa,$00
bar2:
	db $ad,$45,$f9,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$fa,$00
bar3:
	db $2d,$46,$f9,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0,$fa,$00

letterr:
	db $25,$45,"R",$00
letterg:	
	db $a5,$45,"V",$00
letterbl:
	db $25,$46,"A",$00

windownumbers:
	db $A5,$43,"1 2 3 4 5 6 7 8",$C00

magordernumbers:
	db $a5,$41,"1 2 3 4 5 6",$C00

padbyte $ff
pad $C34AC2

warnpc $C34AC3

;------------------------------------------------------------
;
;Data necessary to move
;
;------------------------------------------------------------

org $C3FE10
font:
	db $25,$44,"Fuente",$00
windowcolor:
	db $33,$44,"Ventana",$00
	
org $C33BD5
showdelay:
	db $cf,$3b,"Acci#n",$00

org $C3F451
bbutton:
	db $4f,$3d,"Bot#n B",$00

;------------------------------------------------------------
;	
;Stop data necessary to move 
;
;------------------------------------------------------------	
org $C34AC9

barwindowcolors:
	db $b5,$44,$01,$02,$03,$04,$05,$06,$07,$00
	db $e8,"Curativa",$ff
	db $e9,"Ofensiva",$ff
	db $ea,"Estado",$ff,$ff,$ff

warnpc $C34AF1

org $C34AF1
	db $CF,$78,"Ordenar",$00

warnpc $C34AFB

;Cursor position in screen 1
org $C3386C
	dw $3160	;Exp cursor
	dw $4860	;Btl msg cursor
	dw $5960	;Cmd cursor
	dw $7160	;Show delay cursor
	dw $8160	;Sound cursor
	dw $9160	;Cursor cursor
	dw $A160	;B button cursor
	dw $B160	;Controller cursor

;Brave New World data
org $C33BB8
	db $d1,$78,"Espa@ol Nuevo Mundo 2.1",$00
	
