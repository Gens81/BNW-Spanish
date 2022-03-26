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
;;Skills menu
;;Overwrite data: 
;;from C35C48-C35C86 to C35C (Old unused data)
;;-----------------------------------------------------
;;-----------------------------------------------------

;MP needed section

org $C35856
	dw #needed

org $C35881
	dw $7A4F	; quantity of MP needed position

org $C35889
	db $55,$7A,"PM",$00	;MP


;Pointers
org $C34CE3
	dw #Skillesper
	
org $C34CED
	dw #SkillMagic

org $C34CF7
	dw #SkillBushido
	
org $C34D01
	dw #SkillBlitz
	
org $C34D0B
	dw #SkillLore

org $C34D15
	dw #SkillRage

org $C34D1F
	dw #SkillDance 

;LV, HP, MP pointer manager

org $C34D32
	dw #Skillstats				;Start pointer offset 
	
org $C34d35
	dw $0006					;Pointers to read (2 bytes each pointer)

;Data 
org $C35C48
Skillesper:
	db $0d,$79,"Esper",$00
	
SkillMagic:	
	db $8d,$79,"Magia",$00
	
SkillBushido:
	db $8d,$7A,"Bushido",$00

SkillBlitz:
	db $0d,$7b,"T&cnica",$00
	
SkillLore:
	db $8d,$7b,"Ma.Azul",$00
	
SkillRage:
	db $0d,$7c,"C#lera",$00
	
SkillDance:
	db $8d,$7c,"Danza",$00
	
Skillstats:
	dw #SkillLV
	dw #SkillHP
	dw #SkillMP

SkillLV:
	db $2f,$42,"NV",$00

SkillHP:
	db $af,$42,"PS",$00

SkillMP:
	db $2f,$43,"PM",$00

needed:
	db $0D,$7A,"Coste",$00	;Needed

Esperslash:
	db $bb,$42,"/",$00

Esperslash2:
	db $3b,$43,"/",$00

has_it:
	db "Lo tiene ",$00
	
esperSP:
	db $b1,$47,"PC ",$00
	
learn:	
	db $35,$44,"Aprender",$00

slash30:
	db $bb,$47,"/30",$00

ELbonus:
	db $ff,"Usar NE:",$ff,$ff

cant_equip:
	db "No puede usarlo",$00

padbyte $ff
pad $C35D04
warnpc $C35D05

org $C3F2BF
	db $3B,$42,"NE",$00

;Esper pointers
org $C34EF7
	dw #Esperslash

org $C34EFD
	dw #Esperslash2
	
org $C359AA
	dw #esperSP

org $C3FD87
	dw #learn

org $C3FD7D
	dw #slash30

org $C35A44
	dw #ELbonus

org $C3f0d7
	lda.l cant_equip,x
	
;Esper bonus menu - MP

org $c35b1c		;SP
lda #$8f		;Letter P
sta $2180		
org $C3FD08	
lda #$82		;Letter C
sta $2180	

;Esper bonus menu - MP

org $c3fdc3		;First MP
lda #$8f		;Letter P
sta $2180	
lda #$8c		;Letter M
sta $2180	
	
org $c3fd39		;Others MP
lda #$8f		;Letter P
sta $2180	
lda #$8c		;Letter M
sta $2180	

org $c3f3fa
	lda.l unspentle, x	;pointer
	
org $C3F630
unspentle:
	db "Disponibles:",$00	;original "Unspent EL" moved into different offset


;Routine that set character name
org $c3f0d2 
	jmp chara_name


;Change from Character has it into has it character

org $c355af
	jmp $ff00		;Jump to C3ff00 for new routine

org $c3ff00			;New routine
	cpx #$0250		;Compare - X is 250? (x:0250 = you are on un/equippable esper)
	beq $ff17		;Branch to FF19 if is equal
	stx $0100		;Store X on 7E0100 - save value needed for print chara name
	ldx $00			;Load X and start to print "Has it"
	lda.l has_it,x	;"Has it" pointer
	beq $ff06		;Branch to FF16 at the end of the word
	sta $2180
	inx
	bra $fff4		;55b1
	ldx $0100		;FF16 - Load X from 7E0100 - saved value needed for print chara name 
	ldy #$0006		;FF19 - Load number of chara letter must be printed 
	jmp $f0cb		;FF1C - Jump to subroutine that set chara name
	chara_name:
	cmp #$ff		;Compare letter value 
	beq $ff07		;Branch to FF2A if is equal
	sta $2180
	inx
	dey
	bne $fff2		;Branch to FF1C if is not
	jmp $55ce		;FF2A - Jump back to the original routine

;Cleaning original routine

org $C355B2
padbyte $FF
pad $C355CD


;Triangle cursor

org $C309FE
dw $0002,$0200,$003e,$0208 : db $be
dw $0002,$1200,$003e,$1208 : db $be
dw $0002,$1200,$003e,$0208 : db $be
dw $0002,$0200,$003e,$1208 : db $be

org $C30929
	lda #$00F0		;Set triangle cursor 1 tile right