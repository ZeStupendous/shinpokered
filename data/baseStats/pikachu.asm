db DEX_PIKACHU ; pokedex id
db 40 ; base hp
db 55 ; base attack
db 40 ; base defense
db 90 ; base speed
db 60 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 163 ; catch rate ;joenote - adjusted from 190 to match yellow's starter pikachu
db 82 ; base exp yield
INCBIN PIKACHU_FR,0,1 ; 55, sprite dimensions
dw PikachuPicFront
dw PikachuPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,16
	tmlearn 17,19,20,24
	tmlearn 25,31,32
	tmlearn 33,34,39,40
	tmlearn 44,45
	tmlearn 50,55
;	db 0 ; padding
	db BANK(PikachuPicFront)
	assert BANK(PikachuPicFront) == BANK(PikachuPicBack)

