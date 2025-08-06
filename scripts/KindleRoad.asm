KindleRoad_Script:
	call EnableAutoTextBoxDrawing
	ret

KindleRoad_TextPointers:
	def_text_pointers
	dw_const KindleRoadSignText, TEXT_KINDLEROAD_SIGN

KindleRoadSignText:
	text_far _KindleRoadSignText
	text_end
