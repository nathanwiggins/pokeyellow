        object_const_def
		const_export WILDMEADOW_MASTER_BALL
		const_export WILDMEADOW_NUGGET
		const_export WILDMEADOW_TM15

WildMeadow_Object:
	db $02 ; border block

	def_warp_events
	warp_event 26, 26, CERULEAN_CAVE_2F, 7

	def_bg_events

	def_object_events
    object_event 16, 6, SPRITE_POKE_BALL, STAY, NONE, TEXT_WILDMEADOW_MASTER_BALL, MASTER_BALL
    object_event 26, 3, SPRITE_POKE_BALL, STAY, NONE, TEXT_WILDMEADOW_NUGGET, NUGGET
    object_event 11, 27, SPRITE_POKE_BALL, STAY, NONE, TEXT_WILDMEADOW_TM15, TM_HYPER_BEAM

	def_warps_to WILD_MEADOW
