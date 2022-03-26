	arch 65816
hirom

table "menu.tbl",ltr 

;------------------------------------------------------------------
;Item list
;------------------------------------------------------------------
org $D2B300
	
	db $DB,"Daga>Cura   "
	db $DB,"Daga>Mithril"
	db $DB,"Kagenui     "
	db $DB,"Mariposa    "
	db $DB,"Navaja      "
	db $DB,"Matazombis  "
	db $DB,"Comehombres "
	db $DB,"Kunai       "
	db $DB,"Vengadora   "
	db $DB,"DagaValiente"
	db $DC,"Hoja>Mithril"
	db $DC,"Sable>Hierro"
	db $DC,"Cimitarra   "
	db $DC,"Sable>Piro  "
	db $DC,"Sable>Hielo "
	db $DC,"Sable>Elec  "
	db "             "
	db "             "
	db $DC,"Hoja>Sangre "
	db $DC,"Imperial    "
	db $DC,"Sable>Runico"
	db $DC,"Halc#n      "
	db $DC,"Sable>Alma  "
	db "             "
	db $DC,"Excalibur   "
	db $DC,"Zantetsuken "
	db $DC,"Iluminadora "
	db $DC,"Apocalipsis "
	db $DC,"Arma>Artema "
	db $DD,"LanzaMithril"
	db $DD,"Tridente    "
	db $DD,"LanzaRobusta"
	db $DD,"Partesana   "
	db $DD,"Longinus    "
	db $DD,"Lanza>Piro  "
	db $DD,"Gungnir     "
	db $DD,"Palo>afilado"
	db $DB,"Tanto       "
	db $DB,"Kunai       "
	db $DB,"Sakura      "
	db $DB,"Ninjato     "
	db $DB,"Kagenui     "
	db $DB,"Orochi      "
	db $DF,"Hanzo       "
	db $DF,"Kotetsu     "
	db $DF,"Ichimonji   "
	db $DF,"Kazekiri    "
	db $DF,"Murasame    "
	db $DF,"Masamune    "
	db $DF,"Cuchara     "
	db $DF,"Mutsunokami "
	db $E1,"PaloFantasma"
	db $E1,"Vara>Mithril"
	db $E1,"Vara>Piro   "
	db $E1,"Vara>Hielo  "
	db $E1,"Vara>Electro"
	db $E1,"Rompevientos"
	db $E1,"Palo>Mortal "
	db $E1,"VaraGravedad"
	db $E1,"Vara>Sombra "
	db "             "
	db $E2,"Brocha>Luz  "
	db $E2,"Brocha>Monet"
	db $E2,"Brocha>Dali "
	db $E2,"Brocha>Ross "
	db $D9,"Shuriken    "
	db "             "
	db $D9,"Estrella    "
	db $E3,"Porra       "
	db $E3,"Luna>Llena  "
	db $E3,"Mangual     "
	db $E3,"Bumeran     "
	db $E3,"Sol>Naciente"
	db $E3,"Kusarigama  "
	db $E3,"Porra>Hueso "
	db $E3,"Hueso>M'gico"
	db $E3,"Chakram     "
	db "             "
	db $E0,"Dardos      "
	db $E0,"Tarot       "
	db $E0,"Dardo>Sierpe"
	db $E0,"Dado        "
	db $E0,"Dados>Trampa"
	db $DE,"GarraMithril"
	db $DE,"Garra>Alma  "
	db $DE,"Garra>Veneno"
	db $DE,"Garra>Oc&ano"
	db $DE,"Garra>Piro  "
	db $DE,"Garra>Hielo "
	db $DE,"Garra>Elec  "
	db $E4,"Broquel     "
	db $E4,"EscudoHierro"
	db $E4,"Tarja       "
	db $E4,"Escudo>Oro  "
	db $E4,"Egida       "
	db $E4,"Diamante    "
	db $E4,"Escudo>Piro "
	db $E4,"Escudo>Hielo"
	db $E4,"Escudo>Elec "
	db $E4,"Cristal     "
	db $E4,"Genji       "
	db $E4,"Escudo>Omnia"
	db $E4,"Escudo>H&roe"
	db $E4,"Escudo>H&roe"
	db $E4,"EscudoFuerza"
	db $E5,"Gorro>Cuero "
	db $E5,"Diadema     "
	db $E5,"Gorro>Pluma "
	db $E5,"M'scaraNinja"
	db $E5,"SombreroMago"
	db $E5,"Bandana     "
	db $E5,"Casco>Hierro"
	db $E5,"Calavera    "
	db $E5,"Gorro>~til  "
	db $E5,"Boina>Verde "
	db "             "
	db $E5,"CascoMithril"
	db $E5,"Tiara       "
	db $E5,"Casco>Oro   "
	db $E5,"M'scaraTigre"
	db $E5,"Gorra>Roja  "
	db $E5,"VeloMisterio"
	db $E5,"Aureola     "
	db $E5,"Casco>Drag#n"
	db $E5,"Diamante    "
	db $E5,"CapuchaNegra"
	db $E5,"CascoCristal"
	db $E5,"Velo>Jurado "
	db $E5,"Capucha>Gato"
	db $E5,"Casco>Genji "
	db "             "
	db "             "
	db $E6,"Cuero>Duro  "
	db $E6,"T~nica      "
	db $E6,"Gi>de>Karate"
	db $E6,"Armad>Hierro"
	db "             "
	db $E6,"Peto>Mithril"
	db $E6,"Traje>Ninja "
	db $E6,"Vestido>Gris"
	db $E6,"Cota>Mithril"
	db $E6,"Peto>Gaia   "
	db $E6,"Espejismo   "
	db $E6,"Armadura>Oro"
	db $E6,"Coraza>Poder"
	db $E6,"T~nica>Luz  "
	db $E6,"PetoDiamante"
	db $E6,"ChaquetaReal"
	db $E6,"Armad>Fuerza"
	db $E6,"CotaDiamante"
	db $E6,"Traje>Negro "
	db "             "
	db $E6,"Cota>Cristal"
	db $E6,"VestRadiante"
	db $E6,"Armad>Genji "
	db $E6,"ConchaPereza"
	db $E6,"Minerva     "
	db $E6,"Piel>de>Gato"
	db $E6,"PielAlig'tor"
	db $E6,"Piel>Chocobo"
	db $E6,"Piel>Moguri "
	db $E6,"Piel>Drag#n "
	db $E6,"BufandaNieve"
	db $D8,"Rifle>Ruido "
	db $D8,"Rifle>Bio   "
	db $D8,"Flash       "
	db $D8,"Motosierra  "
	db $D8,"Desfibriladr"
	db $D8,"Taladro     "
	db $D8,"Bater;a>Mana"
	db $D8,"Autoballesta"
	db $DA,"Katon       "
	db $DA,"Suiton      "
	db $DA,"Raiton      "
	db $DA,"Invis       "
	db $DA,"Bomba>Humo  "
	db $E7,"Emblema>Leo "
	db $E7,"Brazalete   "
	db $E7,"Piedra>Alma "
	db $E7,"Amuleto     "
	db $E7,"Capa>Blanca "
	db $E7,"Talisman    "
	db $E7,"Amuleto>Hada"
	db $E7,"Teseracto   "
	db $E7,"Guanteletes "
	db $E7,"AnilloGuarda"
	db $E7,"Zapatillas  "
	db $E7,"AnilloEspejo"
	db " -           "
	db " BolaPegajosa"
	db $E7,"Capa>Palad;n"
	db $E7,"SelloDragoon"
	db $E7,"Capa>C&firo "
	db $E7,"Huevo>Caos  "
	db $E7,"Coraz#nNegro"
	db $E7,"Cubo>Cosmico"
	db $E7,"Guante>Poder"
	db $E7,"OrbeVentisca"
	db $E7,"Cintur#nYeti"
	db $E7,"Capa>P;caro "
	db $E7,"Anillo>Muro "
	db $E7,"Anillo>H&roe"
	db $E7,"Cinta       "
	db $E7,"CintoM~sculo"
	db $E7,"Orbe>Cristal"
	db $E7,"Gafas       "
	db $E7,"Caja>Alma   "
	db $E7,"GuanteLadr#n"
	db "             "
	db "             "
	db $E7,"PowerBalance"
	db "             "
	db "             "
	db "             "
	db $E7,"Moneda>Heiji"
	db $E7,"Piedra>Sabio"
	db $E7,"Joyero      "
	db $E7,"BandaNirvana"
	db $E7,"Economizador"
	db $E7,"RecuerdoPapa"
	db $E7,"Cuarzo      "
	db $E7,"Anillo>Alma "
	db $E7,"Amuleto>Mog "
	db $E7,"Cintur.Negro"
	db $E7,"Coquilla    "
	db $E7,"Guardaespald"
	db $E7,"Horquilla   "
	db $E7,"Palo>~til   "
	db $E7,"Alma>Daryl  "
	db $E7,"Campana     "
	db $E7,"TangaLeopard" 
	db " Carta>Nombre"
	db " Poci#n      "
	db " Ultrapoci#n "
	db " Megapoci#n  "
	db " Eter        "
	db " Ultra&ter   "
	db " Mega&ter    "
	db " Elixir      "
	db " Megalixir   "
	db " Cola>F&nix  "
	db " Agua>Bendita"
	db " Ant;doto    "
	db " Colirio     "
	db " Aceite>Oliva"
	db " Panacea     "
	db " Chatarra    "
	db " Tienda>Lona "
	db " Valeriana   "
	db " L'grimaF&nix"
	db " Bola>de>Goma"
	db " Mortadela   "
	db " Fuet        "
	db " Silbato>Tele"
	db " Chorizo     "
	
warnpc $D2BfF3

;item symbol names

org $D26F00

	db "Herram "
	db "Shurik "
	db "Pergam "
	db "Daga   "
	db "Espada "
	db "Lanza  "
	db "Garra  "
	db "Cimita "
	db "Casino "
	db "Vara   "
	db "Brocha "
	db "Otras  "
	db "Escudo "
	db "Casco  "
	db "Armadur"
	db "Reliqui"

warnpc $D26FFF

;-------------------------------
; Item descriptions
;-------------------------------

org $ED6400

HealingShiv:	db "Acuchilla para curar",$00
MythrilDirk:    db "Las dagas permiten usar 2|armas y se pueden [Lanzar]",$00 
Kagenui:        db "Ataque doble, pone|[Paro] y [Freno]",$00
Butterfly:      db "Da@o doble a humanos",$00
Switchblade:    db "A veces roba un objeto",$00
Demonsbane:     db "Mata no muertos",$00
ManEater:       db "Da@o doble a humanos",$00 
Kunai:          db "",$00
Avenger:        db "Da@o sagrado",$00 
Valiance:       db "Ignora defensas|M's fuerte a PS bajos",$00 
MythrilBolo:    db "",$00
IronCutlass:    db "",$00
Scimitar:       db "Permite 2 armas|Contrataque",$00 
Flametongue:    db "Da@o de fuego|Lanza Piro+",$00
Icebrand:       db "Da@o de hielo|Lanza Hielo+",$00
ElecSword:      db "Da@o de rayo|Lanza Electro+",$00 
Epee:           db "",$00 
BreakBlade:     db "",$00 
BloodSword:     db "Lanza [Drenaje]",$00 
Imperial:       db "",$00 
RuneBlade:      db "Usa PM para dar cr;ticos",$00 
Falchion:       db "Permite 2 armas|Contrataque",$00 
SoulSabre:      db "Lanza [Aspir]",$00 
Organix:        db "",$00 
Excalibur:      db "Usa PM para dar cr;ticos|Mejor a 2 manos",$00 
Zantetsuken:    db "Contrataque. Siempre acierta.|M's cr;ticos. A veces mata",$00 
Illumina:       db "Usa PM para dar cr;ticos|Lanza [Sanctus]",$00 
Apocalypse:     db "Usa PM para dar cr;ticos|Lanza [Fulgor]",$00 
AtmaWeapon:     db "Mejora con Resistencia|Se debilita con PS bajos",$00 
MythrilPike:    db "Las lanzas son mejores a |2 manos y protegen aliados",$00
Trident:        db "PS +12,5%|Da@o de agua",$00 
StoutSpear:     db "PS +25%",$00 
Partisan:       db "PS +25%",$00 
Longinus:       db "PS +25%|Da@o sagrado",$00 
FireLance:      db "PS +12,5%|Da@o de fuego",$00 
Gungnir:        db "PS +50%|Siempre acierta",$00 
PointyStick:    db "",$00 
Tanto:          db "",$00 
Kunai2:         db "",$00 
Sakura:         db "M's da@o a voladores|Lanza [Aero]",$00 
Ninjato:        db "M's da@o a voladores",$00 
Kagenui2:       db "Para ninjas",$00 
Orochi:         db "M's da@o a voladores",$00 
Hanzo:          db "Las katanas mejoran a 2 manos",$00 
Kotetsu:        db "Contrataque",$00 
Ichimonji:      db "M's cr;ticos, a veces mata",$00 
Kazekiri:       db "A veces golpea a todos los|enemigos con da@o de viento",$00 
Murasame:       db "Contrataque",$00 
Masamune:       db "Contrataque",$00 
Spoon:          db "",$00 
Mutsunokami:    db "A veces golpea a todos los|enemigos con da@o de viento",$00 
SpookStick:     db "",$00 
MythrilRod:     db "Las varas usan PM para dar|cr;ticos y lanzan conjuros",$00 
FireRod:        db "Lanza [Piro+]|Da@o x2 de conjuro en cr;tico",$00 
IceRod:         db "Lanza [Hielo+]|Da@o x2 de conjuro en cr;tico",$00 
ThunderRod:     db "Lanza [Electro+]|Da@o x2 de conjuro en cr;tico",$00 
WindBreaker:    db "Golpes de viento basados|en Resistencia",$00 
Doomstick:      db "Lanza [Muerte]|Lanza [Exilio] en cr;tico",$00
Quartrstaff:    db "Lanza [Gravedad+]|Golpea a grupo en cr;tico",$00 
Punisher:       db "Lanza [Sombra]|Da@o x2 de conjuro en cr;tico",$00 
MagusRod:       db "",$00 
LightBrush:     db "Las brochas curan y golpean|2 veces",$00 
MonetBrush:     db "Lanza [Coraza]",$00 
DaliBrush:      db "Lanza [Escudo]",$00 
RossBrush:      db "Lanza [Reflejo]",$00 
Shuriken:       db "Se usa con [Lanzar]|L/R para varios enemigos",$00 
TackStar:       db "",$00 
NinjaStar:      db "Muy fuerte",$00 
Club:           db "",$00 
FullMoon:       db "M's fuerte contra voladores|Permite 2 armas, ignora fila",$00 
MorningStar:    db "Ignora defensas",$00 
Boomerang:      db "M's fuerte contra voladores|Permite 2 armas, ignora fila",$00 
RisingSun:      db "M's fuerte contra voladores|Permite 2 armas, ignora fila",$00 
Kusarigama:     db "Da@o doble a humanos|Pone [Paro] y [Freno]",$00 
BoneClub:       db "",$00 
MagicBone:      db "",$00 
WingEdge:       db "",$00 
Cards:          db "",$00 
Darts:          db "Las armas de casino ignoran fila",$00 
Tarot:          db "Da@o sagrado, mata no muertos",$00 
ViperDarts:     db "Usa PM para dar cr;ticos",$00 
Dice:           db "Da@o = (2Nv. * D1 * D2)|Siempre acierta",$00 
FixedDice:      db "Da@o = (2Nv. * D1 * D2 * D3)|Siempre acierta",$00 
MythrilClaw:    db "",$00 
SpiritClaw:     db "Da@o sagrado|Lanza [Freno]",$00 
PoisonClaw:     db "Da@o de oscuridad|Lanza [Merma]",$00 
OceanClaw:      db "Da@o de agua|Lanza [Drenaje]",$00 
HellClaw:       db "Da@o de fuego|Lanza [Piro]",$00 
Frostgore:      db "Da@o de hielo|Lanza [Hielo]",$00 
Stormfang:      db "Da@o de rayo|Lanza [Electro]",$00 
Buckler:        db "",$00 
IronShield:     db "",$00 
Targe:          db "",$00 
GoldShield:     db "Resiste agua",$00 
AegisShield:    db "Autoprisa",$00 
DiamondKite:    db "Resiste rayo",$00 
Flameguard:     db "Absorbe fuego",$00 
Iceguard:       db "Absorbe hielo",$00 
Thunderguard:   db "Absorbe rayo",$00
CrystalKite:    db "Resiste viento",$00 
GenjiShield:    db "Autocoraza",$00 
Multiguard:     db "Inmune a fuego, hielo y rayo",$00 
CursedShield:   db "Escudo maldito",$00 
HeroShield:     db "Auto Revitalia",$00 
ForceShield:    db "Autoescudo",$00 
LeatherHat:     db "",$00 
HairBand:       db "",$00 
PlumedHat:      db "",$00 
NinjaMask:      db "Contrataque",$00 
MagusHat:       db "PM +25%",$00 
Bandana:        db "",$00 
IronHelm:       db "",$00 
SkullCap:       db "",$00 
StatHat:        db "",$00 
GreenBeret:     db "PS/PM +12,5%",$00
HeadBand:       db "",$00 
MyhtrilHelm:    db "",$00 
Tiara:          db "",$00 
GoldHelm:       db "Resiste agua",$00 
TigerMask:      db "Resiste fuego",$00 
RedCap:         db "PS/PM +25%",$00 
MysteryVeil:    db "Las espadas lanzan m's conjuros",$00 
Circlet:        db "PM +50%",$00 
DragonHelm:     db "[Salto] a veces hace doble da@o",$00 
DiamondHelm:    db "Resiste rayo",$00 
DarkHood:       db "",$00 
CrystalHelm:    db "Resiste viento",$00 
OathVeil:       db "Las espadas lanzan m's|conjuros",$00 
CatHood:        db "",$00 
GenjiHelm:      db "",$00 
Thornlet:       db "",$00 
Titanium:       db "",$00 
HardLeather:    db "",$00 
CottonRobe:     db "",$00 
KarateGi:       db "",$00 
IronArmor:      db "",$00 
SilkRobe:       db "",$00 
MythrilVest:    db "",$00
NinjaGear:      db "",$00 
WhiteDress:     db "",$00 
MythrilMail:    db "",$00 
GaiaGear:       db "Resiste tierra",$00 
MirageVest:     db "Autoprisa",$00 
GoldArmor:      db "Resiste agua",$00 
PowerArmor:     db "",$00 
LightRobe:      db "",$00
DiamondVest:    db "Resiste rayo",$00
RoyalJacket:    db "PS +25%",$00
ForceArmor:     db "Resiste fuego, hielo y rayo",$00 
DiamondMail:    db "Resiste rayo",$00 
DarkGear:       db "",$00 
TaoRobe:        db "",$00 
CrystalMail:    db "Resiste viento",$00 
RadiantGown:    db "PM +25%|Las brochas lanzan m's conjuros",$00 
GenjiArmor:     db "",$00 
LazyShell:      db "Resiste rayo y viento",$00 
Minerva:        db "Inmune a fuego, hielo y rayo",$00 
TabbyHide:      db "Resiste tierra",$00 
GatorHide:      db "Resiste agua",$00 
ChocoboHide:    db "Resiste agua y viento",$00 
MoogleHide:     db "Resiste tierra y viento",$00 
DragonHide:     db "Resiste fuego y viento",$00 
SnowMuffler:    db "Inmune a hielo y viento|PS +25%",$00 
Noiseblaster:   db "Confunde un grupo enemigo",$00 
BioBlaster:     db "Da@o de oscuridad a grupo|Envenena",$00 
Flash:          db "Da@o no elemental a grupo|Ciega",$00 
Chainsaw:       db "",$00 
Defibrillator:  db "",$00 
Drill:          db "",$00 
ManaBattery:    db "",$00 
Autocrossbow:   db "Ataque f;sico a grupo|Ignora fila",$00 
FireScroll:     db "Ataque de fuego a todos los|enemigos, se usa con [Lanzar]",$00
WaveScroll:     db "Ataque de agua a todos los|enemigos, se usa con [Lanzar]",$00 
BoltScroll:     db "Ataque de rayo a todos los|enemigos, se usa con [Lanzar]",$00
InvizScroll:    db "",$00 
SmokeBomb:      db "Pone [Imagen]|Se usa con [Lanzar]",$00 
LeoCrest:       db "",$00 
Bracelet:       db "Inmune a [Veneno]",$00 
SpiritStone:    db "Inmune a [Tiniebla], [Veneno],|[Piedra]",$00 
Amulet:         db "Inmune a [Sue@o], [Confusi#n],|[Furia]",$00 
WhiteCape:      db "Inmune a [Kappa], [Silencio],|[Furia]",$00 
Talisman:       db "Inmune a [Tiniebla], [Veneno]",$00 
FairyCharm:     db "Inmune a [Sue@o], [Confusi#n]",$00 
BarrierCube:    db "[Escudo] a PS bajos",$00 
SafetyGlove:    db "[Coraza] a PS bajos",$00 
GuardRing:      db "Autocoraza",$00 
SprintShoes:    db "Autoprisa",$00 
ReflectRing:    db "Auto Reflejo",$00 
-:              db "",$00 
GumPod:         db "",$00 
KnightCape:     db "PS +12,5%|Protege aliados",$00 
DragoonSeal:    db "Cambia [Atacar] a [Salto]|Las espadas lanzan m's conjuros",$00
ZephyrCape:     db "[Prisa] a PS bajos",$00 
MysteryEgg:     db "Nadie sabe lo que hace",$00 
BlackHeart:     db "PS +50%",$00 
MagicCube:      db "PM +50%",$00 
PowerGlove:     db "Da@o f;sico +25%",$00 
BlizzardOrb:    db "Da@o m'gico +25%|(??? en yetis)",$00 
PsichoBelt:     db "Da@o f;sico +25%|(??? en yetis)",$00 
RogueCloak:     db "Da@o m'gico +25%|[Atacar] siempre acierta",$00 
WallRing:       db "Autoescudo",$00 
HeroRing:       db "PS/PM +25%|Protege aliados",$00 
Ribbon:         db "Inmune a [Paro], [Piedra],|[Muerte], [Zombi]",$00 
MuscleBelt:     db "PS +25%|Da@o f;sico +25%",$00 
CrystalOrb:     db "PM +25%|Da@o m'gico +25%",$00 
Goggles:        db "Inmune a [Tiniebla]",$00 
SoulBox:        db "1/2 PM consumidos",$00 
ThiefGlove:     db "Cambia [Robar] a [Arrebatar]|Da@o f;sico +25%",$00 
Gauntlet:       db "",$00 
GenjiGlove:     db "",$00 
HyperWrist:     db "Autofuria",$00 
Offering:       db "",$00 
Beads:          db "",$00 
ExBlack:        db "",$00 
HeijiCoin:      db "Cambia [Apuesta] a|[Lanzaguiles]",$00 
SageStone:      db "Cambia [Magia] a [Magia X]",$00 
GemBox:         db "1/2 PM consumidos",$00 
NirvanaBand:    db "Da@o +25%",$00 
Economizer:     db "Coste de PM = 1",$00 
MementoRing:    db "Un recuerdo de su padre",$00 
QuartzCharm:    db "Autocoraza, Autoescudo",$00 
GhostRing:      db "Te vuelve no muerto",$00 
MoogleCharm:    db "Baila mejor, salta mejor",$00 
BlackBelt:      db "[Atacar] siempre acierta|Contrataque",$00 
Codpiece:       db "",$00 
BackGuard:      db "Evita emboscadas",$00 
GaleHairpin:    db "M's ataques preventivos",$00 
StatStick:      db "PS/PM +12,5%",$00 
DarylSoul:      db "Ataque doble",$00 
LifeBell:       db "Auto Revitalia",$00 
DirtyUndies:    db "",$00 
RenameCard:     db "Objeto oculto",$00 
Tonic:          db "Cura 50% PS",$00 
Potion:         db "Cura 75% PS",$00 
XPotion:        db "Cura 75% PS al grupo",$00 
Tincture:       db "Cura 50 PM",$00 
Ether:          db "Cura 75% PM",$00 
XEther:         db "Cura 75% PM al grupo",$00 
Elixir:         db "Cura 100% PS/PM y estados|alterados",$00 
Megalixir:      db "Cura 100% PS/PM y estados|alterados al grupo",$00 
PhoenixDown:    db "Resucita con 1 PS",$00 
HolyWater:      db "Cura [Zombi]",$00 
Antidote:       db "Cura [Veneno]",$00 
Eyedrops:       db "Cura [Tiniebla]",$00 
SnakeOil:       db "Virgen extra",$00 
Remedy:         db "Cura casi todos los estados",$00 
Scrap:          db "V&ndela",$00 
Tent:           db "",$00 
GreenCherry:    db "Relajante",$00 
PhoenixTear:    db "Resucita con 75% PS",$00 
BouncyBall:     db "",$00 
RedBull:        db "Cura 200 PS",$00 
SlimJim:        db "Cura 100 PS|[Revitalia], [Prisa]",$00 
WarpWhistle:    db "",$00 
DriedMeat:      db " Cura 100 PS",$00 
DontFuck:       db "",$00

warnpc $ED779F

org $ED7AA0

dw HealingShiv-HealingShiv	
dw MythrilDirk-HealingShiv
dw Kagenui-HealingShiv    
dw Butterfly-HealingShiv  
dw Switchblade-HealingShiv
dw Demonsbane-HealingShiv 
dw ManEater-HealingShiv   
dw Kunai-HealingShiv      
dw Avenger-HealingShiv    
dw Valiance-HealingShiv   
dw MythrilBolo-HealingShiv
dw IronCutlass-HealingShiv
dw Scimitar-HealingShiv   
dw Flametongue-HealingShiv
dw Icebrand-HealingShiv   
dw ElecSword-HealingShiv  
dw Epee-HealingShiv         
dw BreakBlade-HealingShiv         
dw BloodSword-HealingShiv 
dw Imperial-HealingShiv   
dw RuneBlade-HealingShiv  
dw Falchion-HealingShiv   
dw SoulSabre-HealingShiv  
dw Organix-HealingShiv         
dw Excalibur-HealingShiv  
dw Zantetsuken-HealingShiv
dw Illumina-HealingShiv   
dw Apocalypse-HealingShiv 
dw AtmaWeapon-HealingShiv 
dw MythrilPike-HealingShiv
dw Trident-HealingShiv    
dw StoutSpear-HealingShiv 
dw Partisan-HealingShiv   
dw Longinus-HealingShiv   
dw FireLance-HealingShiv  
dw Gungnir-HealingShiv    
dw PointyStick-HealingShiv
dw Tanto-HealingShiv      
dw Kunai2-HealingShiv      
dw Sakura-HealingShiv     
dw Ninjato-HealingShiv    
dw Kagenui2-HealingShiv    
dw Orochi-HealingShiv     
dw Hanzo-HealingShiv      
dw Kotetsu-HealingShiv    
dw Ichimonji-HealingShiv  
dw Kazekiri-HealingShiv   
dw Murasame-HealingShiv   
dw Masamune-HealingShiv   
dw Spoon-HealingShiv      
dw Mutsunokami-HealingShiv
dw SpookStick-HealingShiv 
dw MythrilRod-HealingShiv 
dw FireRod-HealingShiv    
dw IceRod-HealingShiv     
dw ThunderRod-HealingShiv 
dw WindBreaker-HealingShiv
dw Doomstick-HealingShiv  
dw Quartrstaff-HealingShiv
dw Punisher-HealingShiv   
dw MagusRod-HealingShiv         
dw LightBrush-HealingShiv 
dw MonetBrush-HealingShiv 
dw DaliBrush-HealingShiv  
dw RossBrush-HealingShiv  
dw Shuriken-HealingShiv   
dw TackStar-HealingShiv         
dw NinjaStar-HealingShiv  
dw Club-HealingShiv       
dw FullMoon-HealingShiv   
dw MorningStar-HealingShiv
dw Boomerang-HealingShiv  
dw RisingSun-HealingShiv  
dw Kusarigama-HealingShiv 
dw BoneClub-HealingShiv   
dw MagicBone-HealingShiv  
dw WingEdge-HealingShiv   
dw Cards-HealingShiv         
dw Darts-HealingShiv      
dw Tarot-HealingShiv      
dw ViperDarts-HealingShiv 
dw Dice-HealingShiv       
dw FixedDice-HealingShiv  
dw MythrilClaw-HealingShiv
dw SpiritClaw-HealingShiv 
dw PoisonClaw-HealingShiv 
dw OceanClaw-HealingShiv  
dw HellClaw-HealingShiv   
dw Frostgore-HealingShiv  
dw Stormfang-HealingShiv  
dw Buckler-HealingShiv    
dw IronShield-HealingShiv 
dw Targe-HealingShiv      
dw GoldShield-HealingShiv 
dw AegisShield-HealingShiv
dw DiamondKite-HealingShiv
dw Flameguard-HealingShiv 
dw Iceguard-HealingShiv   
dw Thunderguard-HealingShiv   
dw CrystalKite-HealingShiv
dw GenjiShield-HealingShiv
dw Multiguard-HealingShiv 
dw CursedShield-HealingShiv   
dw HeroShield-HealingShiv 
dw ForceShield-HealingShiv
dw LeatherHat-HealingShiv 
dw HairBand-HealingShiv   
dw PlumedHat-HealingShiv        
dw NinjaMask-HealingShiv  
dw MagusHat-HealingShiv   
dw Bandana-HealingShiv    
dw IronHelm-HealingShiv   
dw SkullCap-HealingShiv   
dw StatHat-HealingShiv    
dw GreenBeret-HealingShiv 
dw HeadBand-HealingShiv        
dw MyhtrilHelm-HealingShiv
dw Tiara-HealingShiv      
dw GoldHelm-HealingShiv   
dw TigerMask-HealingShiv  
dw RedCap-HealingShiv     
dw MysteryVeil-HealingShiv
dw Circlet-HealingShiv    
dw DragonHelm-HealingShiv 
dw DiamondHelm-HealingShiv
dw DarkHood-HealingShiv   
dw CrystalHelm-HealingShiv
dw OathVeil-HealingShiv   
dw CatHood-HealingShiv    
dw GenjiHelm-HealingShiv  
dw Thornlet-HealingShiv        
dw Titanium-HealingShiv        
dw HardLeather-HealingShiv
dw CottonRobe-HealingShiv 
dw KarateGi-HealingShiv   
dw IronArmor-HealingShiv  
dw SilkRobe-HealingShiv        
dw MythrilVest-HealingShiv
dw NinjaGear-HealingShiv  
dw WhiteDress-HealingShiv 
dw MythrilMail-HealingShiv
dw GaiaGear-HealingShiv   
dw MirageVest-HealingShiv 
dw GoldArmor-HealingShiv  
dw PowerArmor-HealingShiv 
dw LightRobe-HealingShiv  
dw DiamondVest-HealingShiv
dw RoyalJacket-HealingShiv
dw ForceArmor-HealingShiv 
dw DiamondMail-HealingShiv
dw DarkGear-HealingShiv   
dw TaoRobe-HealingShiv        
dw CrystalMail-HealingShiv
dw RadiantGown-HealingShiv
dw GenjiArmor-HealingShiv 
dw LazyShell-HealingShiv  
dw Minerva-HealingShiv    
dw TabbyHide-HealingShiv  
dw GatorHide-HealingShiv  
dw ChocoboHide-HealingShiv
dw MoogleHide-HealingShiv 
dw DragonHide-HealingShiv 
dw SnowMuffler-HealingShiv
dw Noiseblaster-HealingShiv   
dw BioBlaster-HealingShiv 
dw Flash-HealingShiv      
dw Chainsaw-HealingShiv   
dw Defibrillator-HealingShiv 
dw Drill-HealingShiv      
dw ManaBattery-HealingShiv
dw Autocrossbow-HealingShiv   
dw FireScroll-HealingShiv 
dw WaveScroll-HealingShiv 
dw BoltScroll-HealingShiv 
dw InvizScroll-HealingShiv
dw SmokeBomb-HealingShiv  
dw LeoCrest-HealingShiv   
dw Bracelet-HealingShiv   
dw SpiritStone-HealingShiv
dw Amulet-HealingShiv     
dw WhiteCape-HealingShiv  
dw Talisman-HealingShiv   
dw FairyCharm-HealingShiv 
dw BarrierCube-HealingShiv
dw SafetyGlove-HealingShiv
dw GuardRing-HealingShiv  
dw SprintShoes-HealingShiv
dw ReflectRing-HealingShiv
dw --HealingShiv          
dw GumPod-HealingShiv     
dw KnightCape-HealingShiv 
dw DragoonSeal-HealingShiv
dw ZephyrCape-HealingShiv 
dw MysteryEgg-HealingShiv 
dw BlackHeart-HealingShiv 
dw MagicCube-HealingShiv  
dw PowerGlove-HealingShiv 
dw BlizzardOrb-HealingShiv
dw PsichoBelt-HealingShiv 
dw RogueCloak-HealingShiv 
dw WallRing-HealingShiv   
dw HeroRing-HealingShiv   
dw Ribbon-HealingShiv     
dw MuscleBelt-HealingShiv 
dw CrystalOrb-HealingShiv 
dw Goggles-HealingShiv    
dw SoulBox-HealingShiv    
dw ThiefGlove-HealingShiv 
dw Gauntlet-HealingShiv        
dw GenjiGlove-HealingShiv        
dw HyperWrist-HealingShiv 
dw Offering-HealingShiv        
dw Beads-HealingShiv        
dw ExBlack-HealingShiv        
dw HeijiCoin-HealingShiv  
dw SageStone-HealingShiv  
dw GemBox-HealingShiv     
dw NirvanaBand-HealingShiv
dw Economizer-HealingShiv 
dw MementoRing-HealingShiv
dw QuartzCharm-HealingShiv
dw GhostRing-HealingShiv  
dw MoogleCharm-HealingShiv
dw BlackBelt-HealingShiv  
dw Codpiece-HealingShiv   
dw BackGuard-HealingShiv  
dw GaleHairpin-HealingShiv
dw StatStick-HealingShiv  
dw DarylSoul-HealingShiv  
dw LifeBell-HealingShiv   
dw DirtyUndies-HealingShiv
dw RenameCard-HealingShiv 
dw Tonic-HealingShiv      
dw Potion-HealingShiv     
dw XPotion-HealingShiv    
dw Tincture-HealingShiv   
dw Ether-HealingShiv      
dw XEther-HealingShiv     
dw Elixir-HealingShiv     
dw Megalixir-HealingShiv  
dw PhoenixDown-HealingShiv
dw HolyWater-HealingShiv  
dw Antidote-HealingShiv   
dw Eyedrops-HealingShiv   
dw SnakeOil-HealingShiv   
dw Remedy-HealingShiv     
dw Scrap-HealingShiv      
dw Tent-HealingShiv       
dw GreenCherry-HealingShiv
dw PhoenixTear-HealingShiv
dw BouncyBall-HealingShiv 
dw RedBull-HealingShiv    
dw SlimJim-HealingShiv    
dw WarpWhistle-HealingShiv
dw DriedMeat-HealingShiv  
dw DontFuck-HealingShiv   