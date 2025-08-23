RuinValley_Script:
	call EnableAutoTextBoxDrawing
	ret

RuinValley_TextPointers:
	def_text_pointers
	dw_const PokeTempleSignText, TEXT_POKETEMPLE_SIGN
  dw_const BillsHideoutSignText, TEXT_BILLSHIDEOUT_SIGN

PokeTempleSignText:
	text_far _PokeTempleSignText
	text_end

BillsHideoutSignText:
	text_far _BillsHideoutSignText
	text_end
