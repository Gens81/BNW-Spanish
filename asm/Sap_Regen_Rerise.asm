arch 65816
hirom

;------------------------------------------------------------------
;Sap, Rerise, Regen
;------------------------------------------------------------------
	
org $C2ADE1
	db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff	;overwrite KO
	db $20,$21,$22,$23,$ff,$ff,$ff,$ff,$ff,$ff	;Regen
	db $27,$28,$29,$2a,$ff,$ff,$ff,$ff,$ff,$ff	;Rerise
	db $20,$21,$22,$23,$ff,$27,$28,$29,$2a,$ff	;Regen Rerise
	db $24,$25,$26,$ff,$ff,$ff,$ff,$ff,$ff,$ff	;Sap
	db $82,$87,$84,$80,$93,$84,$91,$ff,$ff,$ff
	db $24,$25,$26,$ff,$ff,$27,$28,$29,$2a,$ff	;Sap Rerise
