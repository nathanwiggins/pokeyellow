BrunosRoom_Script:
	call BrunosRoomShowOrHideExitBlock
	call EnableAutoTextBoxDrawing
	ld hl, BrunosRoomTrainerHeaders
	ld de, BrunosRoom_ScriptPointers
	ld a, [wBrunosRoomCurScript]
	call ExecuteCurMapScriptInTable
	ld [wBrunosRoomCurScript], a
	ret

BrunosRoomShowOrHideExitBlock:
; Blocks or clears the exit to the next room.
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	CheckEvent EVENT_BEAT_BRUNOS_ROOM_TRAINER_0
	jr z, .blockExitToNextRoom
	ld a, $5
	jp .setExitBlock
.blockExitToNextRoom
	ld a, $24
.setExitBlock
	ld [wNewTileBlockID], a
	lb bc, 0, 2
	predef_jump ReplaceTileBlock

ResetBrunosRoomScript:
	xor a ; SCRIPT_BRUNOSROOM_DEFAULT
	ld [wBrunosRoomCurScript], a
	ret

BrunosRoom_ScriptPointers:
	def_script_pointers
	dw_const BrunosRoomDefaultScript,               SCRIPT_BRUNOSROOM_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_BRUNOSROOM_BROCK_START_BATTLE
	dw_const BrunosRoomBrockEndBattleScript,        SCRIPT_BRUNOSROOM_BROCK_END_BATTLE
	dw_const BrunosRoomPlayerIsMovingScript,        SCRIPT_BRUNOSROOM_PLAYER_IS_MOVING
	dw_const BrunosRoomNoopScript,                  SCRIPT_BRUNOSROOM_NOOP

BrunosRoomNoopScript:
	ret

BrunosRoomScriptWalkIntoRoom:
; Walk six steps upward.
	ld hl, wSimulatedJoypadStatesEnd
	ld a, PAD_UP
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, $6
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_BRUNOSROOM_PLAYER_IS_MOVING
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunosRoomDefaultScript:
	ld hl, BrunosRoomEntranceCoords
	call ArePlayerCoordsInArray
	jp nc, CheckFightingMapTrainers
	xor a
	ldh [hJoyPressed], a
	ldh [hJoyHeld], a
	ld [wSimulatedJoypadStatesEnd], a
	ld [wSimulatedJoypadStatesIndex], a
	ld a, [wCoordIndex]
	cp $3  ; Is player standing one tile above the exit?
	jr c, .stopPlayerFromLeaving
	CheckAndSetEvent EVENT_AUTOWALKED_INTO_BRUNOS_ROOM
	jr z, BrunosRoomScriptWalkIntoRoom
.stopPlayerFromLeaving
	ld a, TEXT_BRUNOSROOM_DONT_RUN_AWAY
	ldh [hTextID], a
	call DisplayTextID  ; "Don't run away!"
	ld a, PAD_UP
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_BRUNOSROOM_PLAYER_IS_MOVING
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunosRoomEntranceCoords:
	dbmapcoord  4, 10
	dbmapcoord  5, 10
	dbmapcoord  4, 11
	dbmapcoord  5, 11
	db -1 ; end

BrunosRoomPlayerIsMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a ; SCRIPT_BRUNOSROOM_DEFAULT
	ld [wJoyIgnore], a
	ld [wBrunosRoomCurScript], a
	ld [wCurMapScript], a
	ret

BrunosRoomBrockEndBattleScript:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetBrunosRoomScript
	ld a, TEXT_BRUNOSROOM_BROCK
	ldh [hTextID], a
	jp DisplayTextID

BrunosRoom_TextPointers:
	def_text_pointers
	dw_const BrunosRoomBrockText,            TEXT_BRUNOSROOM_BROCK
	dw_const BrunosRoomDontRunAwayText,      TEXT_BRUNOSROOM_DONT_RUN_AWAY

BrunosRoomTrainerHeaders:
	def_trainers
BrunosRoomTrainerHeader0:
	trainer EVENT_BEAT_BRUNOS_ROOM_TRAINER_0, 0, BrockBeforeBattleText, BrockEndBattleText, BrockAfterBattleText
	db -1 ; end

BrunosRoomBrockText:
	text_asm
	ld hl, BrunosRoomTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

BrockBeforeBattleText:
	text_far _BrunosRoomBrockBeforeBattleText
	text_end

BrockEndBattleText:
	text_far _BrunosRoomBrockEndBattleText
	text_end

BrockAfterBattleText:
	text_far _BrunosRoomBrockAfterBattleText
	text_end

BrunosRoomDontRunAwayText:
	text_far _BrunosRoomDontRunAwayText
	text_end
