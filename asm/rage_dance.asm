arch 65816
hirom

;------------------------------
;Rages - Alphabetical order
;------------------------------
org $C25846
	lda rages_id,x		;Battle menu pointer
org $C353CB
	lda rages_id,x		;Main menu pointer
	
org $C3FCBE
	ldx #ragespointer
	
org $C4A700
rages_id:
    db $1d ; Adamantina
    db $22 ; Albatros
    db $e9 ; Anemona
    db $5d ; Antoleon
    db $42 ; Armad MTec
    db $2e ; Avispa
    db $20 ; Begimo
    db $4f ; Bom
    db $f7 ; Bruja
    db $58 ; Buffalax
    db $41 ; Cebolleta
    db $96 ; Cefalido
    db $4a ; Cerebrito
    db $08 ; Conjurador
    db $87 ; Corredor
    db $28 ; Cuervo
    db $48 ; Djinn
    db $0e ; Espirito
    db $39 ; Exocite
    db $47 ; Flan
    db $0c ; Gargola
    db $18 ; Gato
    db $88 ; Gavilan
    db $89 ; Grifo
    db $62 ; Gusano
    db $93 ; Hierbajo
    db $91 ; Hortensia
    db $fe ; Io
    db $6b ; Joker
    db $ee ; Kudzu
    db $17 ; Lechuguin
    db $0f ; Liche
    db $f8 ; Lobohombre
    db $0b ; Luchador
    db $d2 ; Mantodea    
    db $21 ; Mesosaurio
    db $63 ; Moco
    db $61 ; Molbol
    db $ce ; Nastidon
    db $f1 ; Nigromante    
    db $03 ; Ninja
    db $d4 ; Oso pardo
    db $70 ; Osteosauro
    db $8e ; Pelotero
    db $7b ; Perrete
    db $3d ; Pollito
    db $1f ; Quimera
    db $13 ; RataCloaca
    db $5c ; Raya Arena
    db $df ; Reparador
    db $75 ; Rhydon
    db $72 ; Rocky
    db $34 ; Rodadora
    db $dd ; Vagabundo
    db $d0 ; Saltamonte
    db $05 ; Shokan
    db $01 ; Soldado
    db $66 ; Templario
    db $27 ; Tirano
    db $f2 ; Titan
    db $5b ; Troll
    db $55 ; Urna
    db $46 ; Vaporite
    db $82 ; Zombone
	
;------------------------------------------------------------------
;Rages-pointers
;------------------------------------------------------------------

ragespointer:
    dw #Blank       ;
    dw #Soldier     ;     
    dw #Blank       ;     
    dw #Ninja       ; 3   
    dw #Blank       ;     
    dw #Shokan      ; 5   
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Conjurer    ; 8   
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Scrapper    ; 11  
    dw #Gargoyle    ; 12  
    dw #Blank       ;     
    dw #Spirit      ; 14  
    dw #Lich        ; 15  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #SewerRat    ; 19  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Leafer      ; 23  
    dw #StrayCat    ; 24  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Adamantite  ; 29  
    dw #Blank       ;     
    dw #Chimera     ; 31  
    dw #Behemoth    ; 32  
    dw #Mesosaur    ; 33  
    dw #Albatross   ; 34  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Tyrano      ; 39  
    dw #Raven       ; 40  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Hornet      ; 46  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Tumbleweed  ; 52  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Exocite     ; 57  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Chickenlip  ; 61  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #OnionKid    ; 65  
    dw #TekArmor    ; 66  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Vaporite    ; 70  
    dw #Flan        ; 71  
    dw #Jinn        ; 72  
    dw #Blank       ;     
    dw #Brainpan    ; 74  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Bomb        ; 79  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #MagicPot    ; 85  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Buffalax    ; 88  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Troll       ; 91  
    dw #SandRay     ; 92  
    dw #Antlion     ; 93  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Marlboro    ; 97  
    dw #Crawler     ; 98  
    dw #EyeGoo      ; 99  
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Templar     ; 102 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #RainMan     ; 107 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Osteosaur   ; 112 
    dw #Blank       ;     
    dw #Rocky       ; 114 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Rhydon      ; 117 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Doggo       ; 123 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Zombone     ; 130 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Windrunner  ; 135 
    dw #Vulture     ; 136 
    dw #Griffin     ; 137 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Scarab      ; 142 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Belladonna  ; 145 
    dw #Blank       ;     
    dw #Weedula     ; 147 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Cephalid    ; 150 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Nastidon    ; 206 
    dw #Blank       ;     
    dw #Locust      ; 208 
    dw #Blank       ;     
    dw #Mantodea    ; 210 
    dw #Blank       ;     
    dw #Grizzly     ; 212 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Vagrant     ; 221 
    dw #Blank       ;     
    dw #RepoMan     ; 223 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Anemone     ; 233 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Kudzu       ; 238 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Revenant    ; 241 
    dw #Titan       ; 242 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Witch       ; 247 
    dw #Werewolf    ; 248 
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Blank       ;     
    dw #Io          ; 254 

;------------------------------------------------------------------
;Rages-description
;------------------------------------------------------------------

rages_description:
    Blank: db $00
    Soldier: db $E8,"Cura+|Ataque (x2)",$00
    Ninja: db "Suiton|Tenue",$00
    Shokan: db $E9,"Sombra|Arrasar",$00
    Conjurer: db $E8,"AutoL'z|Ataque (Merma)",$00
    Scrapper: db "Ataque (x2)|Chakra",$00
    Gargoyle: db "Soleado|",$E9,"Temblor",$00
    Spirit: db $E9,"Grav|",$E9,"Grav+",$00
    Lich: db $EA,"Lima|Fuego Elfo",$00
    SewerRat: db $E9,"Toxis|Ataque (Veneno)",$00
    Leafer: db "Vendaval|Bocanada",$00
    StrayCat: db "Bola Nieve|Ataque (x3)",$00
    Adamantite: db "Ataque (x2)|Viento Albo",$00
    Chimera: db "Al.Acuoso|Bola Fuego",$00
    Behemoth: db "Ataque (x2)|Meteo",$00
    Mesosaur: db "Viento Albo|Magnitud",$00
    Albatross: db "Bola Fuego|Ataque (x2)",$00
    Tyrano: db "Ataque (x3)|TormenFuego",$00
    Raven: db $E9,"Aero|Ataque (Morfeo)",$00
    Hornet: db "Ataque (x3)|Parpadeo",$00
    Tumbleweed: db $E8,"Cura++|Ataque (Drenaje)",$00
    Exocite: db "Piedra|Ataque (x2)",$00
    Chickenlip: db "Ataque (Confusi#n)|Red",$00
    OnionKid: db "Nota Marr#n|Ataque (Furia)",$00
    TekArmor: db "Barriera|Ataque (x2)",$00
    Vaporite: db "Plasma|Ataque (x0, Ceguera)",$00
    Flan: db $E8,"L'zaro|",$EA,"Freno+",$00
    Jinn: db "Discordia|Ataque (Silencio)",$00
    Brainpan: db "Mil Espinas|",$E8,"AutoL'z",$00
    Bomb: db "Explosivo|Explosivo",$00 
    MagicPot: db $E8,"Cura|Ataque (x4)",$00
    Buffalax: db "Alud|Ataque (x3)",$00
    Troll: db "Ataque (x3)|Refracci#n",$00
    SandRay: db "TormenArena|Ataque (x2)",$00
    Antlion: db "Ataque (x0, Paro)|Trampa",$00
    Marlboro: db "Rifle Bio|Al.Fetido",$00
    Crawler: db "Magnitud|Ataque (Drenaje)",$00
    EyeGoo: db "Lodo|Mirada",$00
    Templar: db "Ataque (x3)|",$E8,"Esna",$00
    RainMan: db "LluviaAcida|",$E9,"Elec+",$00
    Osteosaur: db $E9,"Muerte|Ataque (x0, Petra)",$00
    Rocky: db "Recolector|Piedra",$00
    Rhydon: db "Ataque (x2)|Soleado",$00
    Doggo: db "Ataque (x3)|Mina Pasos",$00
    Zombone: db "Derrumbe|Ataque (x0, Zombi)",$00
    Windrunner: db "Aero+|Enfermedad",$00
    Vulture: db "Hoja Aguda|Recolector",$00
    Griffin: db "Trueno|Bocanada",$00
    Scarab: db "Luz Estelar|Rayo",$00
    Belladonna: db "Luz Lunar|Asalto",$00
    Weedula: db $E9,"Temblor|Hoja Aguda",$00
    Cephalid: db "Tentacular|Ataque (Freno)",$00
    Nastidon: db "Bola Nieve|0 Absoluto",$00
    Locust: db "Corte Luz|Espejismo",$00
    Mantodea: db "Metralla|Ataque (Merma)",$00
    Grizzly: db "Derrumbe|Ataque (x3)",$00
    Vagrant: db "Tormen Elec|Ataque (x2)",$00
    RepoMan: db "Mina Pasos|Tenue",$00
    Anemone: db "Descarga|Ataque (Veneno)",$00
    Kudzu: db "Asalto|",$E8,"Revita+",$00
    Revenant: db $E9,"Sanctus|Llamas",$00
    Titan: db "Avalancha|Ataque (x3)",$00
    Witch: db "Refracci#n|",$E9,"Piro++",$00
    Werewolf: db "Ataque (x3)|",$E8,"Revita",$00
    Io: db "Rayo 'tomo|Difusor",$00
    
warnpc $C4AFB9

;------------------------------------------------------------------
;Dance descriptions
;------------------------------------------------------------------
org $C3FCB5
    ldx #dance_description_pointers
    
org $C4AFC3
dance_description_pointers:
    dw Rapsodia
    dw Notturno
    dw Ballata
    dw Serenata
    dw Blues
    dw Rondo
    dw Requiem
    dw Jazz

Rapsodia:
    db "Soleado 44%, Vendaval 31%|Hoja Aguda 19%, Cocatriz 6%",$00
Notturno:
    db "Recolector 44%, Hoja Aguda 31%|Fuego Elfo 19%, Mapache 6%",$00
Ballata:
    db "TormenArena 44%, Espejismo 31%|Soleado 19%, Suricato 6%",$00
Serenata:
    db "Tormento 44%, Luz Lunar 31%|Fuego Elfo 19%, Tapir 6%",$00
Blues:
    db "Avalancha 44%, Soleado 31%|Vendaval 19%, Jabal; 6%",$00
Rondo:  
    db "El Ni@o 44%, Plasma 31%|Oleada 19%, Rana Veneno 6%",$00
Requiem:
    db "Derrumbe 44%, Trampa 31%|Luz Lunar 19%, Uombat 6%",$00
Jazz:
    db "Ventisca 44%, Oleada 31%|Espejismo 19%, ConejoHielo 6%",$00
