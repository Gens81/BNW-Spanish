arch 65816
hirom

;------------------------------------------------------------------
;Menu Font and Sap_Regen_Rerise
;------------------------------------------------------------------

org $C47FC0
	incbin "../gfx/modified/047FC0_menu_font.bin" 	;Font and Sap_Regen_Rerise

;------------------------------------------------------------------
;THE END gfx
;------------------------------------------------------------------

org $E96300
	incbin "../gfx/modified/296300_The_End.bin"
	
;------------------------------------------------------------------
;Cinematic&Title Program&GFX
;------------------------------------------------------------------
check bankcross off
org $C2686C
	incbin "../gfx/modified/C2686C_Cinematic_Progam.bin"	;Cinematic Program
	
org $D8f000
	incbin "../gfx/modified/D8F000_Cinematich_Title_Isle_GFX.bin"	;Cinematic, Title, Isle GFX & Tilemap Properties
check bankcross on