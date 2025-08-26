WildMonEncounterSlotChances:
; There are 10 slots for wild pokemon, and this is the table that defines how common each of
; those 10 slots is. A random number is generated and then the first byte of each pair in this
; table is compared against that random number. If the random number is less than or equal
; to the first byte, then that slot is chosen.  The second byte is double the slot number.
	db  37, $00 ; 38/256 = 14.8% chance of slot 0
	db  75, $02 ; 38/256 = 14.8% chance of slot 1
	db 113, $04 ; 38/256 = 14.8% chance of slot 2
	db 151, $06 ; 38/256 = 14.8% chance of slot 3
	db 176, $08 ; 25/256 =  9.8% chance of slot 4
	db 201, $0A ; 25/256 =  9.8% chance of slot 5
	db 226, $0C ; 25/256 =  9.8% chance of slot 6
	db 239, $0E ; 13/256 =  5.1% chance of slot 7
	db 251, $10 ; 12/256 =  4.7% chance of slot 8
	db 255, $12 ;  4/256 =  1.6% chance of slot 9
