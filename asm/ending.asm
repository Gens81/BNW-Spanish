arch 65816
hirom

;------------------------------------------------------------------
;Ending
;------------------------------------------------------------------

	
;AS word
;org $C3E8B7			;Values in pixel
;	lda #$7a		;where 1st letter must be printed on screen horizontal
;	sta $7e33ca,x	;save on 
;	lda #$B9		;where 1st letter must be printed on screen vertical
;	sta $7e344a,x	;save on
;	
;org $C28E8F				;1st value horizontal value, 2nd value vertical value
;	db $02				;word length
;	db $00,$00,$2A,$33	;1st letter
;	db $00,$08,$2B,$33	;2nd letter

;AND YOU word
org $CFF8AF
	
	db $00,$08,$40,$31	;_ top
	db $00,$10,$40,$31	;_ bottom
	db $08,$08,$40,$31	;_ top
	db $08,$10,$40,$31	;_ bottom
	db $0c,$08,$28,$31	;Y top
	db $0c,$10,$38,$31	;Y bottom
	db $1c,$08,$23,$31	;T top
	db $1c,$10,$33,$31	;T bottom
	db $24,$08,$24,$31	;U top
	db $24,$10,$34,$31	;U bottom
	db $30,$08,$40,$31	;_ top
	db $30,$10,$40,$31	;_ bottom
