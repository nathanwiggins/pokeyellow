    object_const_def
    const_export MTEMBER3F_MOLTRES

MtEmber3F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 7, 13, MT_EMBER_2F, 2

	def_bg_events

	def_object_events
	object_event 7, 5, SPRITE_BIRD, STAY, DOWN, TEXT_MTEMBER3F_MOLTRES, MOLTRES, 50

	def_warps_to MT_EMBER_3F
