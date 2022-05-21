;;-----------------------------------------------------
;;-----------------------------------------------------
;;
;;Magic & Esper data
;; 
;;-----------------------------------------------------
;;-----------------------------------------------------

;------------------------------------------------------
;Spell increased by 1
;------------------------------------------------------

;spell data: increase how many letter to be print by 1 

;spell pointer
;battle menu

org $C1601A
	lda #$08		;Spell name length
org $C16031
	lda spell,x		;Load spell name

org $C165E8
	lda #$08		;Spell name length
	sta $2E
	sta $40
	jsr $18B0
	ldx $30
	lda spell,x		;Load Spell name

org $C16B1D
	lda #$08		;Spell name length
	sta $10
	jsr $18CA
	rep #$20
	lda $004216
	tax 
	tdc 
	sep #$20
	lda spell,x		;Load spell name
	
org $c34fb5
	ldy #$0008		;Spell name length
	sty $EB
	ldy #spell		;spell name address
	sty $EF
	lda #$EF		;spell name bank

org $c34ff7
	nop				;nop instead of $FF 
	nop				;where "_..._" [$FF,$c7$,FF] in magic menu must be print

org $c35af9
	ldx #$9e93		;Where spell in the esper menu must be print

org $c3fd4b			;Shortening space between MP and PA - Spell in the esper menu
	nop				;No operations insteda os LDA 2180
	nop				;LDA 2180 repeat the byte $FF 3 times to print 3
	nop				;blank tiles before XX PA
;------------------------------------------------------
;Esper increased by 1
;------------------------------------------------------

;Esper space increased by 1

;esper pointer
;Battle

org $C15FF3
	lda #$09			;Esper name length
org $C16007	
	lda esper,x			;Load esper name x
		
org $C165D0	
	lda #$09			;Esper name length
	sta $2e	
	sta $40	
	jsr $18b0	
	ldx $30	
	lda esper,x			;Load esper name x
		
org $C1668D	
	lda #$09			;Esper name length
	sta $2e	
	sta $40	
	jsr $18b0	
	ldx $30	
	lda esper,x			;Btl Menu pointer x
	
; Menu	

org	$c334f0 
	jsr multiplierby9	;Jump to subroutine that multiply by 9
	tax
	ldy #$0009			;Esper name length
	lda esper,x			;Skill&Review menu pointer

org $C33508				;Set blank tiles when esper are unequipped
	ldy #$0009			;Set tiles number
	lda #$ff  			;Set tile value

org $c34f0c	
	ldy #$421d			;Where esper must be print in skill menu
	
org $c354FA	
	ldy #$0009			;Esper name length
	sty $eb	
	ldy #esper			;Esper list menu pointer
	sty $ef	
	lda #$ef			;Esper name bank
	
org $c35539 	
	ldx #$9e94			;Esper choice wide +1

org $C359BD
	jsr multiplierby9	;Jump to subroutine that multiply by 9
	tax
	ldy #$0009			;Esper name length
	lda esper,x			;Esper choice menu pointer
	
	
org $c3f650				;New subroutine that multiply A by 9
multiplierby9:			;Necessary to load every 9 bytes
	sta $4202
	lda #$09
	sta $4203
	nop
	nop
	nop
	nop
	lda $4216
	rts


;Data

org $EFFC00
spell:
	db $E9,"Piro   "
	db $E9,"Hielo  "
	db $E9,"Electro"
	db $E9,"Merma  "
	db $E9,"Toxis  "
	db $E9,"Piro+  "
	db $E9,"Hielo+ "
	db $E9,"Elec+  "
	db $E9,"Aero   "
	db $E9,"Piro++ "
	db $E9,"Hielo++"
	db $E9,"Elec++ "
	db $E9,"Temblor"
	db $E9,"Muerte "
	db $E9,"Sanctus"
	db $E9,"Fulgor "
	db $E9,"Sombra "
	db $E9,"Tormen "
	db $E9,"Exilio "
	db $E9,"Meteo  "
	db $E9,"Artema "
	db $E9,"Fusi#n "
	db $E9,"Grav   "
	db $E9,"Grav+  "
	db $E9,"Drenaje"
	db $E9,"Aspir  "
	db $EA,"Lima   "
	db $EA,"Confu  "
	db $EA,"Mutis  "
	db $EA,"Morfeo "
	db $EA,"Morfeo+"
	db $EA,"Kappa  "
	db $EA,"Berserk"
	db $EA,"Paro   "
	db $EA,"Coraza "
	db $EA,"Escudo "
	db $EA,"Prisa  "
	db $EA,"Prisa+ "
	db $EA,"Freno  "
	db $EA,"Freno+ "
	db $EA,"Espejo "
	db $EA,"Levita "
	db $EA,"Televi "
	db $EA,"Libra  "
	db $EA,"Antimag"
	db $E8,"Cura   "
	db $E8,"Cura+  "
	db $E8,"Cura++ "
	db $E8,"L'zaro "
	db $E8,"L'zaro+"
	db $E8,"AutoL'z"
	db $E8,"Esna   "
	db $E8,"Revita "
	db $E8,"Revita+"

esper:
	db "Lamu     "
	db "Ifrit    "
	db "Shiva    "
	db "Sirena   "
	db "Midgarsom"
	db "Catoblepa"
	db "Maduin   "
	db "Bismarck "
	db "Cait Sith"
	db "Quetzal  "
	db "Valigarma"
	db "Odino    "
	db "Loki     "
	db "Bahamut  "
	db "Cruzado  "
	db "Ragnarok "
	db "Alejandro"
	db "Kirin    "
	db "Zoneseek "
	db "Rub;     "
	db "Espectro "
	db "Seraf;n  "
	db "Golem    "
	db "Unicornio"
	db "Fenril   "
	db "Lakshmi  "
	db "F&nix    "

;------------------------------------------------------
;Battle quotes-BLue Magic increased by 1
;------------------------------------------------------

org $C15FC9
	lda #$0b				;String text length on battle quotes
org $C15FDD
	lda.l battle_quotes,x	;Battle quotes text bank

org $C165B4
	lda #$0b
org $C165BF
	lda.l battle_quotes,x

org $C16ADC
	lda #$0b
org $C16AED
	lda.l battle_quotes,x


;Blue Magic Skil Menu pointer 
org $C35266
	ldy #$000b		;Set String Length
	sty $eb			;Store in 
	
org $C3526B
	ldy #blue_magic	;Load text Address
	sty $ef			;Store in
	lda #$e6		;Load text Bank
	sta $f1			;Store in

;Blue MAgic Battle Menu
org $C16665
	lda #$0b			;Set String Length
org $C16670
	lda.l blue_magic,x;Load text address

org $c35295 
	ldx #$9e96			;Set "... xx" one tile right
org $C352C0
	ldy #$000f			;Delete tiles length

;Dance
org $c357c1
	ldy #$000c		;Dance text Length
	sty $eb			;Store in
	ldy #dance		;Text Pointer
	sty $ef			;Store in
	lda #$e6		;Bank text pointer
	sta $f1			;Store in
	
;Jujitsu
org $C3f503			;Jujitsu skill menu
	ldy #$000b		;Jujitsu text length
	lda.l jujitsu,x	;Text Pointer

;Jujitsu pointer routine

org $c3f4f0
	pha					;Push A to Stack
	phy					;Push Y to Stack
	jmp multiplierby0a	;Go to subroutine that multiply by 0a


org $c3f660
multiplierby0a: 
	sta $4202			;Store A
	lda #$0b			;Set 0b
	sta $4203			;Store & make multiply
	nop
	nop
	nop
	nop
	lda $4216
	pha
	jmp $f4f8			;Jump back to original subroutine

;Summon
org $C2BB4D
	lda #$0B			;Set 11 letters length
	
org $C2BB59
	lda.l summon,x		;pointers
	
org $C2BB66
	cpy #$000B
	
;Mgtek
org $C164f8
	lda #$0b
org $C164FF
	lda #$0b
org $C1650A
	lda.l Mgtek,x
	
;Dance
org $C16610
	lda #$0c			;Text length
Org $C1661b
	lda.l dance,x		;Pointers

;------------------------------------------------------
;Text Data
;------------------------------------------------------

org $E6F567
battle_quotes:
	db "Katon      "
	db "Suiton     "
	db "Raiton     "
	db "Ventisca   "
	db "           "
	db "           "
	db "           "
	db "           "
	db "           "
	db "           "
	db "           "
	db "           "
jujitsu:
	db "Golpe>ira  "
	db "Suplex     "
	db "Aura       "
	db "Danza>Fuego"
	db "Mantra     "
	db "Chakra     "
	db "Laceraci#n "
	db "Estampida  "
	db "Vendaval   "
	db "Soleado    "
	db "Hoja>Aguda "
	db "Recolector "
	db "TormenArena"
	db "Luz>Lunar  "
	db "Fuego>Elfo "
	db "Espectral  "
	db "Avalancha  "
	db "Espejismo  "
	db "El>Ni@o    "
	db "Plasma     "
	db "Trampa     "
	db "Derrumbe   "
	db "Ventisca   "
	db "Oleada     "
	db "Cocatriz   "
	db "Uombat     "
	db "Suricato   "
	db "Tapir      "
	db "Jabal;     "
	db "Mapache    "
	db "Rana>Veneno"
	db "ConejoHielo"
	db "Onda>Bio   "
	db "Flash      "
	db "Trifecta   "
	db "Blackjack  "
	db "Solitario  "
	db $be,"Shock     "
Mgtek:
	db $E9,"Piro      "   
	db "Explosivo  "
	db "Piedra     "
	db "Tentacular "
	db "Metralla   "
	db "Parpadeo   "
	db "Suiton     "          
	db "           "
	
;org	$E6F9FD
blue_magic:
	db "Al.Acuoso  "
	db "Al.F&tido  "
	db "Presagio   "
	db "Llamas     "
	db "Mil>Espinas"
	db "Discordia  "
	db "Viento>Albo"
	db "Asalto     "
	db "Arrasar    "
	db "Refracci#n "
	db "Muro       "
	db "Tsunami    "
	db "Jackpot    "
	db $be,"WindSlash "
	db $be,"Aero      "
	db $be,"Defib     "
	db $be,"ManaBat   "
	db $be,"WarpFlute "
	db "Recolector "
	db "Soleado    "
	db "Colapso    "
	db "           "
	db "           "
	db "           "
	
;org $E6FAED
;Battle_Quotes_2
	db "Coscorr#n  "
	db "Rifle>Bio  "
	db "Sanador    "
	db "Kappancion "
	db "Schiller   "
	db "Quasar     "
	db "LluviaAcida"
	db "TormenFuego"
	db "Explosivo  "
	db "Luz Estelar"
	db "Red        "
	db "Piedra     "
	db "Al.Acuoso  "
	db "Enredadera "
	db "Reparar    "
	db "Cicl#n     "
	db "Bola>Fuego "
	db "Rayo>'tomo "
	db "Laser      "
	db "Difusor    "
	db "Descarga   "
	db "Rayo       "
	db "Trueno     "
	db "Bola>Nieve "
	db "0>Absoluto "
	db "Magnitud   "
	db "Tenue      "
	db "Tormen>Elec"
	db "Barrera    "
	db "Angel>Ca;do"
	db "Cambiamuro "
	db "Escape     "
	db "Graviton   "
	db "Desc.Mental"
	db "Polar      "
	db "Estr.Fulgor"
	db "Amoroso    "
	db "Agarre     "
	db "Polaridad  "
	db "Apuntando  "
	db "Estornudo  "
	db "Crux       "
	db "Lanzador   "
	db "Encanto    "
	db "Polvo>Hielo"
	db "Tentacular "
	db "Hipermotor "
	db "Tren       "
	db "Silbato    "
	db "Graviton   "
	db "Zampar     "
	db "Thriller   "
	db "Metralla   "
	db "Condena    "
	db "Comealmas  "
	db "Gi>Nattak  "
	db "Descarte   "
	db "Supermagia "
	db "Misil      "
	db "Adiosito   "
	db "Meteo      "
	db "Purga      "
	db "Fantasma   "
	db "Mirada     "
	db "Choque     "
	db "Aero+      "
	db "Mina Pasos "
	db "Corte Luz  "
	db "Bocanada   "
	db "Lodo       "
	db "Enfermedad "
	db "Huracanado "
	db "Rompevidas "
	db "Nota>Marr#n"
	db "Alud       "
	db "Atacar     "
	db "Especial   "
	db "Hoja>Letal "
	db "At.Furtivo "
	db "TsubaGaeshi"
	db "ColmiSombra"
	db "Ultima>Baza"
	db "Hadouken   "
	db "Tornado    "
	db "Rompealmas "
	db "Prisma     "
	db "Repoker    "
	db "Carga>Mog  "
	db "Meteo++++++"
	db "Venganza   "
	db "Venganza   "
	db "A>Fregar   "
	db "?????????? "
summon:
	db "Rayo>Juicio"
	db "Fuego>Infer"
	db "Diamanpolvo"
	db "Canci#n    "
	db "Terremoto  "
	db "Petra      "
	db "Ala>Ca#tica"
	db "Inundaci#n "
	db "Caith>Sith "
	db "AtaqueA&reo"
	db "Triataque  "
	db "Sable>Just."
	db "True>Edge  "
	db "Megafulgor "
	db "Jihad      "
	db "Olvido     "
	db "Vered.Final"
	db "Salvavidas "
	db "Muro>Luz   "
	db "Respla.Rub;"
	db "Invisible  "
	db "Luz>Vital  "
	db "Muro>Roca  "
	db "Cuerno>Luz "
	db "Luz>Lunar  "
	db "Abrazo     "
	db "Llama>Vida "
;org $E6FFA9
dance:
	db "Rapsodia    "
	db "Serenata    "
	db "Nana        "
	db "Alborada    "
	db "Blues       "
	db "Hidroarmon;a"
	db "R&quiem     "
	db "Jazz        "

padbyte $ff
pad $E6ffff
warnpc $E70000

;Bushido names

org $CF3C40
	db "Colmillo    "
	db "Vac;o       "
	db "Tigre       "
	db "R'faga      "
	db "Drag#n      "
	db "Eclipse     "
	db "Tempestad   "
	db "Olvido      "

warnpc $CF3CFF	

;Battle command names

org $D8CEA0

	db "Atacar "
	db "Objeto "
	db "Magia  "
	db "Trance "
	db "Humana "
	db "Robar  "
	db "Arrebat"
	db "Bushido"
	db "Lanzar "
	db "Herram."
	db "Tecnica"
	db "Sintes."
	db "Ma.Azul"
	db "Pintar "
	db "Control"
	db "Apuesta"
	db "Colera "
	db "Saltar "
	db "Imitar "
	db "Danza  "
	db "Fila   "
	db "Def.   "
	db "Salto  "
	db "Magia>X"
	db "LanzGil"
	db "Invocar"
	db "Sanar  "
	db "Shock  "
	db "Poseer "
	db "MagiTec"

warnpc $D8CF7F
