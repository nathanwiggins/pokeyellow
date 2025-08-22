    object_const_def
		const_export WATER_PATH_RARE_CANDY_1
		const_export WATER_PATH_RARE_CANDY_2
		const_export WATER_PATH_RARE_CANDY_3

WaterPath_Object:
	db $44 ; border block

	def_warp_events

	def_bg_events

	def_object_events
    object_event 17, 15, SPRITE_POKE_BALL, STAY, NONE, TEXT_WATER_PATH_RARE_CANDY_1, RARE_CANDY
    object_event 29, 3, SPRITE_POKE_BALL, STAY, NONE, TEXT_WATER_PATH_RARE_CANDY_2, RARE_CANDY
    object_event 42, 15, SPRITE_POKE_BALL, STAY, NONE, TEXT_WATER_PATH_RARE_CANDY_3, RARE_CANDY

	def_warps_to WATER_PATH
