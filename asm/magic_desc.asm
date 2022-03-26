;---------------------------------------
;Magic descriptions
;---------------------------------------

org $D8C9A0

Fire: db $DC,$00
Ice: db $DB,$00
Bolt: db $D8,$00
Sap: db "Ataque de oscuridad, pone|[Merma]",$00
Poison: db "Ataque de oscuridad, pone|[Veneno]",$00
Fire2: db $DC,$DC,$00
Ice2: db $DB,$DB,$00
Bolt2: db $D8,$D8,$00
Break: db "Ataque de viento, ignora|defensas",$00
Fire3: db $DC,$DC,$DC,$00
Ice3: db $DB,$DB,$DB,$00
Bolt3: db $D8,$D8,$D8,$00
Quake: db "Ataque de tierra a todos los|combatientes, ignora defensas",$00
Doom: db "Mata a un enemigo, cura|no muertos",$00
Holy: db "Ataque sagrado, ignora defensas",$00
Flare: db "Ataque no elemental, ignora|defensas",$00
Dark: db "Ataque de oscuridad",$00
Storm: db "Ataque de agua y viento a todos|los enemigos",$00
XZone: db "Mata a un grupo de enemigos",$00
Meteor: db "Da@a a todos los enemigos",$00
Ultima: db "Magia suprema",$00
Merton: db "Ataque de fuego y oscuridad a|todos los combatientes",$00
Demi: db "Quita 50% PS a un enemigo",$00
Quartr: db "Quita 75% PS a un grupo de|enemigos",$00
Drain: db "Absorbe PS de un enemigo",$00
Osmose: db "Absorbe PM de un enemigo",$00
Rasp: db "Da@a los PM",$00
Muddle: db "Confunde a todos los enemigos",$00
Mute: db "Silencia a un enemigo",$00
Sleep: db "Duerme al objetivo",$00
SleepX: db "Duerme a todos los enemigos",$00
Imp: db "Convierte en [Kappa]",$00
Bserk: db "Enfurece a un objetivo",$00
Stop: db "Para a un objetivo",$00
Safe: db "Aumenta la defensa",$00
Shell: db "Aumenta la defensa m'gica",$00
Haste: db "Acelera al objetivo",$00
HasteX: db "Acelera a todo el grupo",$00
Slow: db "Ralentiza al objetivo",$00
SlowX: db "Ralentiza a todos los enemigos",$00
Rflect: db "Refleja la magia",$00
Float: db "El grupo flota",$00
Warp: db "Escapa de mazmorras/combates",$00
Scan: db "Muestra PS, PM y debilidades",$00
Dispel: db "Elimina estados positivos",$00
Cure: db "Recupera PS",$00
Cure2: db "Recupera PS",$00
Cure3: db "Recupera PS",$00
Life: db "Resucita",$00
Life2: db "Resucita con toda la vida",$00
Rerise: db "Resucita de forma autom'tica",$00
GRemedy: db "Cura estados alterados",$00
Regen: db "Pone [Revitalia]",$00
RegenX: db "Pone [Revitalia] a todo el grupo",$00

warnpc $D8CE9F

org $D8CF80

	dw Fire-Fire
	dw Ice-Fire
	dw Bolt-Fire
	dw Sap-Fire
	dw Poison-Fire
	dw Fire2-Fire
	dw Ice2-Fire
	dw Bolt2-Fire
	dw Break-Fire
	dw Fire3-Fire
	dw Ice3-Fire
	dw Bolt3-Fire
	dw Quake-Fire
	dw Doom-Fire
	dw Holy-Fire
	dw Flare-Fire
	dw Dark-Fire
	dw Storm-Fire
	dw XZone-Fire
	dw Meteor-Fire
	dw Ultima-Fire
	dw Merton-Fire
	dw Demi-Fire
	dw Quartr-Fire
	dw Drain-Fire
	dw Osmose-Fire
	dw Rasp-Fire
	dw Muddle-Fire
	dw Mute-Fire
	dw Sleep-Fire
	dw SleepX-Fire
	dw Imp-Fire
	dw Bserk-Fire
	dw Stop-Fire
	dw Safe-Fire
	dw Shell-Fire
	dw Haste-Fire
	dw HasteX-Fire
	dw Slow-Fire
	dw SlowX-Fire
	dw Rflect-Fire
	dw Float-Fire
	dw Warp-Fire
	dw Scan-Fire
	dw Dispel-Fire
	dw Cure-Fire
	dw Cure2-Fire
	dw Cure3-Fire
	dw Life-Fire
	dw Life2-Fire
	dw Rerise-Fire
	dw GRemedy-Fire
	dw Regen-Fire
	dw RegenX-Fire