        object_const_def
		const_export WILD_MEADOW_MASTER_BALL
		const_export WILD_MEADOW_NUGGET
		const_export WILD_MEADOW_TM15

WildMeadow_Object:
	db $02 ; border block

	def_warp_events
	warp_event 36, 26, CERULEAN_CAVE_2F, 7
	warp_event  4, 29, WATER_PATH, 1
	warp_event  5, 29, WATER_PATH, 1
	warp_event  6, 29, WATER_PATH, 1
	warp_event  7, 29, WATER_PATH, 1

	def_bg_events

	def_object_events
    object_event 26, 6, SPRITE_POKE_BALL, STAY, NONE, TEXT_WILD_MEADOW_MASTER_BALL, MASTER_BALL
    object_event 36, 3, SPRITE_POKE_BALL, STAY, NONE, TEXT_WILD_MEADOW_NUGGET, NUGGET
    object_event 21, 27, SPRITE_POKE_BALL, STAY, NONE, TEXT_WILD_MEADOW_TM15, TM_HYPER_BEAM

	def_warps_to WILD_MEADOW
