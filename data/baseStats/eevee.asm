db DEX_EEVEE ; pokedex id
db 60 ; base hp
db 60 ; base attack
db 55 ; base defense
db 55 ; base speed
db 65 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 92 ; base exp yield
INCBIN EEVEE_FR,0,1 ; 55, sprite dimensions
dw EeveePicFront
dw EeveePicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,34,39,40
	tmlearn 44
	tmlearn 50
;	db 0 ; padding
	db BANK(EeveePicFront)
	assert BANK(EeveePicFront) == BANK(EeveePicBack)

