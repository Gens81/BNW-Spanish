	arch 65816
hirom

table "menu.tbl",ltr 

;------------------------------------------------------------------
;Item list
;------------------------------------------------------------------
org $CEFBA0
	
	db "Sidra        "
	db "Llave>Reloj  "
	db "Pescado>Bueno"
	db "Pescado      "
	db "Pescado      "
	db "Pescado>Asco "
	db "Culpa        "
	db "Carta>a>Lola "
	db "Bot;n        "
	db "Porno        "
	db "MapaEmperador"
	db "WD-40        "
	db "Planos       "
	db "Fichas>Poker "
	db "             "
	db "             "
	db "Piedra>Rota  "
	db "Bebida>de>Leo"
	db "             "
	db "Collar       "
	
warnpc $CEFCAF
	
;------------------------------------------------------------------
;Rare items descriptions
;------------------------------------------------------------------
    
org $CEFCB0

Cider:
    db "Cider deliciosa",$00
ClockKey:
    db "Para activar un reloj",$00
TastyFish:
    db "Un pescado rico",$00
JustFish:
    db "Un pescado sin m's",$00
Fish:
    db "Pescado",$00
RottenFish:  
    db "Est' podrido",$00
Guilt:
    db "El peso de una familia y|amigos asesinados",$00
LolaLetter:
    db "Qu& expl;cita_",$00
Booty:
    db "Bot;n para un cofre",$00
Filth:
    db "[Las aventuras del se@or|tent'culo y la colegiala traviesa]",$00
EmperorMap:
    db "Ens&@aselo al viejo",$00
WD40:
    db "Por si no basta con|cinta adhesiva",$00
Schematics:
    db "Autoballesta +50% da@o",$00
BettingChips:  
    db "Parece que se las hayan|intentado comer",$00
Blank1: db $00
Blank2: db $00
CrackedStone:  
    db "A ver, qui&n ha sido?",$00
LeoSpirits:  
    db "La bebida favorita de Leo",$00
Blank3: db $00
Pendant:
    db "Hay cosas de las que es|imposible deshacerse_",$00
    
warnpc $CEFFFF

org $CEFB60

	dw Cider-Cider
	dw ClockKey-Cider
	dw TastyFish-Cider
	dw JustFish-Cider
	dw Fish-Cider
	dw RottenFish-Cider
	dw Guilt-Cider
	dw LolaLetter-Cider
	dw Booty-Cider
	dw Filth-Cider
	dw EmperorMap-Cider
	dw WD40-Cider
	dw Schematics-Cider
	dw BettingChips-Cider
	dw Blank1-Cider
	dw Blank2-Cider
	dw CrackedStone-Cider
	dw LeoSpirits-Cider
	dw Blank3-Cider
	dw Pendant-Cider
