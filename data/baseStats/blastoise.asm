db DEX_BLASTOISE ; pokedex id
db 80 ; base hp
db 85 ; base attack
db 100 ; base defense
db 80 ; base speed
db 90 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 210 ; base exp yield
INCBIN BLASTOISE_FR,0,1 ; 77, sprite dimensions
dw BlastoisePicFront
dw BlastoisePicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db BUBBLE
db WATER_GUN
db 3 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,20
	tmlearn 26,27,28,31,32
	tmlearn 33,34,40
	tmlearn 44
	tmlearn 50,53,54
;	db 0 ; padding
	db BANK(BlastoisePicFront)
	assert BANK(BlastoisePicFront) == BANK(BlastoisePicBack)

