MtEmber1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 2, 15, LAST_MAP, 1
	warp_event 3, 15, LAST_MAP, 1
	warp_event 9,  3, MT_EMBER_2F, 1

	def_bg_events

	def_object_events

	def_warps_to MT_EMBER_1F
