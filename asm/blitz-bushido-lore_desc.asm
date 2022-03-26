;---------------------------------------
;Blitz descriptions
;---------------------------------------

org $CFFC00

Pummel:
	db "Ignora defensa, pone [Merma]",$00
Suplex:
	db "Ignora defensa, pone [Paro]",$00
Aurabolt:
	db "Da@o sagrado",$00
FireDance:
	db "Ataque de fuego a todos los|enemigos",$00
Mantra:
	db "Cura a los aliados",$00
Chakra:
	db "Cura PM a los aliados",$00
SonicBoom:	
	db "Ataque de viento de a todos los|enemigos",$00
BumRush:	
	db "Ignora defensas",$00

warnpc $CFFCFF

org $CFFF9E

	dw Pummel-Pummel
	dw Suplex-Pummel
	dw Aurabolt-Pummel
	dw FireDance-Pummel
	dw Mantra-Pummel
	dw Chakra-Pummel
	dw SonicBoom-Pummel
	dw BumRush-Pummel
	
;---------------------------------------
;Bushido descriptions
;---------------------------------------

org $CFFD00

Dispatch:
	db "Un ataque, da@o x2 a humanos",$00
Mindblow:	
	db "Da@o de PM",$00
Empeworer:	
	db "Absorbe PS y PM y pone [Merma]",$00
Flurry:	
	db "Golpea 4 veces y confunde",$00
Dragon:	
	db "Ignora defensas y petrifica",$00
Eclipse:	
	db "Golpea y ciega",$00
Tempest:	
	db "Golpea 4 veces",$00
Cleave:	
	db "Mata a todos los enemigos",$00

warnpc $CFFDFF

org $CFFFAE

	dw Dispatch-Dispatch
	dw Mindblow-Dispatch
	dw Empeworer-Dispatch
	dw Flurry-Dispatch
	dw Dragon-Dispatch
	dw Eclipse-Dispatch
	dw Tempest-Dispatch
	dw Cleave-Dispatch
	
;---------------------------------------
;Lore descriptions
;---------------------------------------

org $ED77A0

Aqualung:
	db "Ataque de agua",$00
BadBreath:	
	db "Envenena, ciega, silencia",$00
BlackOmen:	
	db "Ignora defensas",$00
Blaze:	
	db "Ataque de fuego y viento,|ciega y pone [Merma]",$00
BlowFish:	
	db "1000 da@o",$00
Discord:	
	db "Confunde y enfurece",$00
HolyWind:	
	db "Cura al grupo",$00
Raid:	
	db "Absorbe PS y PM,|ignora defensas",$00
Raze:	
	db "Ataque de fuego y viento,|pone [Merma]",$00
Refract:	
	db "[Imagen] y [Reflejo]",$00
Shield:	
	db "Pone [Coraza] al grupo",$00
Tsunami:	
	db "Ataque de agua a todos los|enemigos",$00

warnpc $ED7A6F

org $ED7A70

	dw Aqualung-Aqualung
	dw BadBreath-Aqualung
	dw BlackOmen-Aqualung
	dw Blaze-Aqualung
	dw BlowFish-Aqualung
	dw Discord-Aqualung
	dw HolyWind-Aqualung
	dw Raid-Aqualung
	dw Raze-Aqualung
	dw Refract-Aqualung
	dw Shield-Aqualung
	dw Tsunami-Aqualung