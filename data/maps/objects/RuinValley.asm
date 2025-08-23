RuinValley_Object:
	db $2C ; border block

	def_warp_events

	def_bg_events
	bg_event 19, 25, TEXT_POKETEMPLE_SIGN
	bg_event 33, 35, TEXT_BILLSHIDEOUT_SIGN

	def_object_events

	def_warps_to RUIN_VALLEY
