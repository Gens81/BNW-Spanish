;----------------------------------------------------
;Equip bonus descriptions
;----------------------------------------------------

org $CF3940

Ramuhb: 
    db "Resiste rayo",$00
Ifritb: 
    db "Resiste fuego",$00
Shivab: 
    db "Resiste hielo",$00
Sirenb: 
    db "Inmune a [Tiniebla], [Silencio],|[Confusi#n]",$00
Terratob: 
	db "Resiste tierra",$00
Shoatb: 
	db "Resistencia +5",$00
Maduinb: 
	db "Resiste viento",$00
Bismarkb:
	db "Resiste agua",$00
Strayb: 
	db "Inmune a [Veneno], [Kappa],|[Furia]",$00
Palidorb: 
	db "Autoprisa",$00
Tritochb: 
	db "Autoescudo",$00
Odinb: 
	db "Velocidad +5",$00
Lokib: 
	db "",$00
Bahamutb:
    db "Autocoraza",$00
Crusaderb: 
	db "Autoespejo",$00
Ragnarokb: 
	db "Da@o m'gico +25%",$00
Alexandrb: 
	db "Da@o f;sico +25%",$00
Kirinb: 
	db "Magia +5",$00
Zoneseekb: 
	db "Def. M'gica +10",$00
Carbunklb: 
	db "Auto Revitalia",$00
Phantomb: 
	db "Eva. M'gica +10",$00
Seraphb: 
	db "Inmune a [Sue@o], [Piedra],|Muerte",$00
Golemb: 
	db "Defensa +10",$00
Unicornb: 
	db "Vigor +5",$00
Fenrirb: 
	db "Evasi#n +10",$00
Starletb: 
	db "PM +25%",$00
Phoenixb: 
	db "PS +25%",$00
    
warnpc $CF3C3F

org $CFFE40

	dw Ramuhb-Ramuhb
    dw Ifritb-Ramuhb
    dw Shivab-Ramuhb
    dw Sirenb-Ramuhb
    dw Terratob-Ramuhb
    dw Shoatb-Ramuhb
    dw Maduinb-Ramuhb
    dw Bismarkb-Ramuhb
    dw Strayb-Ramuhb
    dw Palidorb-Ramuhb
    dw Tritochb-Ramuhb
    dw Odinb-Ramuhb
    dw Lokib-Ramuhb
    dw Bahamutb-Ramuhb
    dw Crusaderb-Ramuhb
    dw Ragnarokb-Ramuhb
    dw Alexandrb-Ramuhb
    dw Kirinb-Ramuhb
    dw Zoneseekb-Ramuhb
    dw Carbunklb-Ramuhb
    dw Phantomb-Ramuhb
    dw Seraphb-Ramuhb
    dw Golemb-Ramuhb
    dw Unicornb-Ramuhb
    dw Fenrirb-Ramuhb
    dw Starletb-Ramuhb
    dw Phoenixb-Ramuhb

;----------------------------------------------
;Esper bonus names
;----------------------------------------------

org $CFFEAE

db "+PS      "
db "+PM      "
db "+PS/PM   "
db "+Vgr/PS  "
db "+Mag/PM  "
db "+Vgr/Vel "
db "+Mag/Vel "
db "+Vgr/Res "
db "+Mag/Res "
db "+Vel/Res "
db "+PS/Res  "
db "+PM/Res  "
db "+Vigor   "
db "+Veloc   "
db "+Resist  "
db "+Magia   "

warnpc $CFFF9D

;----------------------------------------------
;Esper bonus descriptions
;----------------------------------------------

org $EDFE00

HP: db "+60 PS",$00
MP: db "+40 PM",$00
HPMP: db "+30 PS/+15 PM",$00
VgrHP: db "+1 Vigor/+20 PS",$00
MagMP: db "+1 Magia/+20 PM",$00
VgrSpd: db "+1 Vigor/+1 Velocidad",$00
MagSpd: db "+1 Magia/+1 Velocidad",$00
VgrSta: db "+1 Vigor/+1 Resistencia",$00
MagSta: db "+1 Magia/+1 Resistencia",$00
SpdSta: db "+1 Velocidad/+1 Resistencia",$00
HPSta: db "+30 PS/+1 Resistencia",$00
MPSta: db "+25 PM/+1 Resistencia",$00
Vigor: db "+2 Vigor",$00
Speed: db "+2 Velocidad",$00
Stamina: db "+2 Resistencia",$00
Magic: db "+2 Magia",$00

warnpc $EDFFCF

org $EDFFD0

dw HP-HP
dw MP-HP
dw HPMP-HP
dw VgrHP-HP
dw MagMP-HP
dw VgrSpd-HP
dw MagSpd-HP
dw VgrSta-HP
dw MagSta-HP
dw SpdSta-HP
dw HPSta-HP
dw MPSta-HP
dw Vigor-HP
dw Speed-HP
dw Stamina-HP
dw Magic-HP

warnpc $EDFFFF

;----------------------------------------------
; Summons descriptions
;----------------------------------------------

!freeXL = $C48270     ; big ol' chunk of freespace :D

org !freeXL

InitEsperDataSlice:
  LDA #$10            ; Reset/Stop desc
  TSB $45             ; Set menu flag
  LDA $49             ; Top BG1 write row
  STA $5F             ; Save for return
  RTL

EsperDescPointers:
  dw Ramuh
  dw Ifrit
  dw Shiva
  dw Siren
  dw Terrato
  dw Shoat
  dw Maduin
  dw Bismark
  dw Stray
  dw Palidor
  dw Tritoch
  dw Odin
  dw Loki
  dw Bahamut
  dw Crusader
  dw Ragnarok
  dw Alexandr
  dw Kirin
  dw Zoneseek
  dw Carbunkl
  dw Phantom
  dw Seraph
  dw Golem
  dw Unicorn
  dw Fenrir
  dw Starlet
  dw Phoenix

Ramuh: db "Da@o de rayo a enemigos",$00
Ifrit: db "Da@o de fuego a enemigos",$00
Shiva: db "Da@o de hielo a enemigos",$00
Siren: db "[Furia] a los enemigos",$00
Terrato: db "Da@o de tierra a enemigos",$00
Shoat: db "[Petrifica] a los enemigos",$00
Maduin: db "Da@o de viento a enemigos|Ignora def.",$00
Bismark: db "Da@o de agua a enemigos",$00
Stray: db "Cura al equipo con Resistencia|Pone [Revitalia]",$00
Palidor: db "Todo el equipo usa [Saltar]",$00
Tritoch: db "Fuego, hielo y rayo a enemigos",$00
Odin: db "Da@o no elemental a enemigos|Usa Resistencia e ignora def.",$00
Loki: db $00
Bahamut: db "Da@o no elemental a enemigos|Ignora def.",$00
Crusader: db "Da@o de oscuridad a enemigos",$00
Ragnarok: db "Da@o 9999 a un enemigo",$00
Alexandr: db "Da@o sagrado a enemigos",$00
Kirin: db "Cura al equipo|Revive aliados",$00
Zoneseek: db "Pone [Escudo] al equipo",$00
Carbunkl: db "Pone [Reflejo] al equipo",$00
Phantom: db "Hace [Invisible] al equipo",$00
Seraph: db "Pone [Autol'zaro] al equipo",$00
Golem: db "Bloquea ataques f;sicos|(Durabilidad = PS m'ximos)",$00
Unicorn: db "Cura al equipo con Resistencia|Cura la mayor;a de estados",$00
Fenrir: db "Pone [Imagen] al equipo",$00
Starlet: db "Cura al equipo al m'ximo|Cura todos los estados",$00
Phoenix: db "Revive aliados|(PS = m'x)",$00