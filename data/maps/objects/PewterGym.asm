	object_const_def
	const_export PEWTERGYM_BRUNO
	const_export PEWTERGYM_COOLTRAINER_M
	const_export PEWTERGYM_GYM_GUIDE

PewterGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 3
	warp_event  5, 13, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_BRUNO, STAY, DOWN, TEXT_PEWTERGYM_BRUNO, OPP_BRUNO, 1
	object_event  3,  6, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_PEWTERGYM_COOLTRAINER_M, OPP_JR_TRAINER_M, 1
	object_event  7, 10, SPRITE_GYM_GUIDE, STAY, DOWN, TEXT_PEWTERGYM_GYM_GUIDE

	def_warps_to PEWTER_GYM
