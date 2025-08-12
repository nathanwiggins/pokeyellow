KindleRoad_Object:
	db $43 ; border block

	def_warp_events
	warp_event 10, 15, MT_EMBER_1F, 1

	def_bg_events
	bg_event 7, 17, TEXT_KINDLEROAD_SIGN

	def_object_events

	def_warps_to KINDLE_ROAD
