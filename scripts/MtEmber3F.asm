MtEmber3F_Script:
        call EnableAutoTextBoxDrawing
        ld hl, MtEmber3FTrainerHeaders
        ld de, MtEmber3F_ScriptPointers
        ld a, [wMtEmber3FCurScript]
        call ExecuteCurMapScriptInTable
        ld [wMtEmber3FCurScript], a
        ret

MtEmber3F_ScriptPointers:
        def_script_pointers
        dw_const CheckFightingMapTrainers,              SCRIPT_MTEMBER3F_DEFAULT
        dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_MTEMBER3F_START_BATTLE
        dw_const EndTrainerBattle,                      SCRIPT_MTEMBER3F_END_BATTLE

MtEmber3F_TextPointers:
        def_text_pointers
        dw_const MtEmber3FMoltresText, TEXT_MTEMBER3F_MOLTRES

MtEmber3FTrainerHeaders:
        def_trainers
MtEmber3FMoltresTrainerHeader:
        trainer EVENT_BEAT_MOLTRES, 0, MtEmber3FMoltresBattleText, MtEmber3FMoltresBattleText, MtEmber3FMoltresBattleText
        db -1 ; end

MtEmber3FMoltresText:
        text_asm
        ld hl, MtEmber3FMoltresTrainerHeader
        call TalkToTrainer
        jp TextScriptEnd

MtEmber3FMoltresBattleText:
        text_far _MtEmber3FMoltresBattleText
        text_asm
        ld a, MOLTRES
        call PlayCry
        call WaitForSoundToFinish
        jp TextScriptEnd
