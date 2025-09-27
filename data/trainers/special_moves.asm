; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db BUG_CATCHER, 15
	db 2, 2, TACKLE
	db 2, 3, STRING_SHOT
	db 0

	db YOUNGSTER, 14
	db 1, 4, FISSURE
	db 0

	db BRUNO, 1
	db 2, 4, BIDE
	db 0

	db LORELEI, 1
	db 2, 4, BUBBLEBEAM
	db 0

	db LT_SURGE, 1
	db 1, 4, THUNDERBOLT
	db 0

	db ERIKA, 1
	db 3, 4, MEGA_DRAIN
	db 0

	db KOGA, 1
	db 4, 4, TOXIC
	db 0

	db BLAINE, 1
	db 5, 4, FIRE_BLAST
	db 0

	db SABRINA, 1
	db 4, 4, PSYWAVE
	db 0

	db AGATHA, 1
	db 5, 4, FISSURE
	db 0

	db -1 ; end
