PokemonTemple_Object:
	db $01 ; border block

	def_warp_events
	warp_event 10, 17, LAST_MAP, 1
 	warp_event 11, 17, LAST_MAP, 1

	def_bg_events

	def_object_events

	def_warps_to POKEMON_TEMPLE
