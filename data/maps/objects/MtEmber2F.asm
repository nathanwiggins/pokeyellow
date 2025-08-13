        object_const_def
        const_export MTEMBER2F_HIKER
        const_export MTEMBER2F_BURGLAR
        const_export MTEMBER2F_POKEMANIAC
        const_export MTEMBER2F_FIRE_STONE
        const_export MTEMBER2F_MAX_REVIVE
        const_export MTEMBER2F_TM43

MtEmber2F_Object:
	db $3 ; border block

	def_warp_events
	warp_event  7, 33, MT_EMBER_1F, 3
	warp_event 23, 13, MT_EMBER_3F, 1

	def_bg_events

	def_object_events
    object_event  7, 22, SPRITE_HIKER, STAY, DOWN, TEXT_MTEMBER2F_HIKER, OPP_HIKER, 15
    object_event 16, 33, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_MTEMBER2F_BURGLAR, OPP_BURGLAR, 10
    object_event 26, 18, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_MTEMBER2F_POKEMANIAC, OPP_POKEMANIAC, 8
    object_event 25, 33, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTEMBER2F_FIRE_STONE, FIRE_STONE
    object_event 27,  4, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTEMBER2F_MAX_REVIVE, MAX_REVIVE
    object_event 33, 32, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTEMBER2F_TM43, TM_SKY_ATTACK

	def_warps_to MT_EMBER_2F
