	arch 65816
hirom

table "dialog.tbl",ltr 

;------------------------------------------------------------------
; Map Names
;------------------------------------------------------------------

org $CEF100
    
Map:		db "",$00
Inn:		db "Posada",$00
Blacksmith:	db "Armas",$00
Armory:		db "Armaduras",$00
Outfitters:	db "Arsenal",$00
Relic:		db "Reliquias",$00
Store:		db "Objetos",$00
Pub:		db "Pub",$00
Engine:		db "Sala de motores",$00
B1:			db "S1",$00
B2:			db "S2",$00
B3:			db "S3",$00
B4:			db "S4",$00
Floor1:		db "Piso 1",$00
Floor2:		db "Piso 2",$00
Floor3:		db "Piso 3",$00
Floor4:		db "Piso 4",$00
Floor5:		db "Piso 5",$00
Floor6:		db "Piso 6",$00
Floor7:		db "Piso 7",$00
Floor8:		db "Piso 8",$00
Floor9:		db "Piso 9",$00
Floor10:	db "Piso 10",$00
Chocobo:	db "Establo",$00
FigCastle:	db "Castillo de Figaro",$00
SouthFig:	db "Figaro del Sur",$00
Returners:	db "Base de los replicantes",$00
Elder:		db "Casa del anciano",$00
Duncan:		db "Casa de Duncan",$00
MtKolts:    db "Monte Kolts",$00
King:		db "Sala del Rey",$00
Moogle:		db "Cueva Moguri",$00
Narshe:		db "Narshe",$00
Auction:	db "Casa de subasta",$00
Owzer:		db "Casa de Owzer",$00
Baren:		db "Cataratas Baren",$00
Mobliz:		db "Mobliz",$00
Nikeah:		db "Nikeah",$00
Tzen:		db "Tzen",$00
Hideout:	db "Base de los replicantes",$00
Lete:		db "R;o Lete",$00
Camp:		db "Campamento Imperial",$00
Doma:		db "Doma",$00
Forest:		db "Bosque Fantasma",$00
Serpent:	db "Camino Serpiente",$00
Kohlingen:	db "Kohlingen",$00
Zozo:		db "Zozo",$00
Jidoor:		db "Jidoor",$00
Opera:		db "Casa de la #pera",$00
Vector:		db "Vector",$00
ImperialC:	db "Castillo Imperial",$00
Magitek:	db "Zona Magitec",$00
Maranda:	db "Maranda",$00
Albrook:	db "Albrook",$00
Base:		db "Base imperial",$00
Gate:		db "Puerta sellada",$00
Thamasa:	db "Thamasa",$00
Colosseum:	db "Coliseo",$00
Tomb:		db "Tumba de Daryl",$00
Floating:	db "Continente Flotante",$00
Esperville:	db "Esperville",$00
MtZozo:		db "Monte Zozo",$00
Factory:	db "F'brica Magitec",$00
Crescent:	db "Monte Crescent",$00
Beginner:	db "Clase principiantes",$00
KefkaTower:	db "Torre de Kefka",$00
Advanced:	db "T'cticas avanzadas",$00
BattleTact:	db "T'cticas de combate",$00
Science:	db "Ciencia y medioambiente",$00
Sealed:		db "Cueva hacia la puerta sellada",$00
GenStore:	db "Tienda",$00
PhoenixC:	db "Cueva F&nix",$00
Veldt:		db "Cueva del Veldt",$00
    
warnpc $CEF600

;-------------------------------
; Pointers to Map Names
;-------------------------------

org $E68400

dw 	Map-Map
dw 	Inn-Map
dw 	Blacksmith-Map
dw 	Armory-Map
dw 	Outfitters-Map
dw 	Relic-Map
dw 	Store-Map
dw 	Pub-Map
dw 	Engine-Map
dw 	B1-Map
dw 	B2-Map
dw 	B3-Map
dw 	B4-Map
dw 	Floor1-Map
dw 	Floor2-Map
dw 	Floor3-Map
dw 	Floor4-Map
dw 	Floor5-Map
dw 	Floor6-Map
dw 	Floor7-Map
dw 	Floor8-Map
dw 	Floor9-Map
dw 	Floor10-Map
dw 	Chocobo-Map
dw 	FigCastle-Map
dw 	SouthFig-Map
dw 	Returners-Map
dw 	Elder-Map
dw 	Duncan-Map
dw 	MtKolts-Map
dw 	King-Map
dw 	Moogle-Map
dw 	Narshe-Map
dw 	Auction-Map
dw 	Owzer-Map
dw 	Baren-Map
dw 	Mobliz-Map
dw 	Nikeah-Map
dw 	Tzen-Map
dw 	Hideout-Map
dw 	Lete-Map
dw 	Camp-Map
dw 	Doma-Map
dw 	Forest-Map
dw 	Serpent-Map
dw 	Kohlingen-Map
dw 	Zozo-Map
dw 	Jidoor-Map
dw 	Opera-Map
dw 	Vector-Map
dw 	ImperialC-Map
dw 	Magitek-Map
dw 	Maranda-Map
dw 	Albrook-Map
dw 	Base-Map
dw 	Gate-Map
dw 	Thamasa-Map
dw 	Colosseum-Map
dw 	Tomb-Map
dw 	Floating-Map
dw 	Esperville-Map
dw 	MtZozo-Map
dw 	Factory-Map
dw 	Crescent-Map
dw 	Beginner-Map
dw 	KefkaTower-Map
dw 	Advanced-Map
dw 	BattleTact-Map
dw 	Science-Map
dw 	Sealed-Map
dw 	GenStore-Map
dw 	PhoenixC-Map
dw 	Veldt-Map

warnpc $E68780
