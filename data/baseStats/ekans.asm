db DEX_EKANS ; pokedex id
db 40 ; base hp
db 65 ; base attack
db 44 ; base defense
db 60 ; base speed
db 40 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 62 ; base exp yield
INCBIN EKANS_FR,0,1 ; 55, sprite dimensions
dw EkansPicFront
dw EkansPicBack
; attacks known at lvl 0
db WRAP
db LEER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20,21
	tmlearn 26,27,28,31,32
	tmlearn 34,40
	tmlearn 44,48
	tmlearn 50,54
;	db 0 ; padding
	db BANK(EkansPicFront)
	assert BANK(EkansPicFront) == BANK(EkansPicBack)

