MtEmber2F_Script:
        call EnableAutoTextBoxDrawing
        ld hl, MtEmber2FTrainerHeaders
        ld de, MtEmber2F_ScriptPointers
        ld a, [wMtEmber2FCurScript]
        call ExecuteCurMapScriptInTable
        ld [wMtEmber2FCurScript], a
        ret

MtEmber2F_ScriptPointers:
        def_script_pointers
        dw_const CheckFightingMapTrainers,              SCRIPT_MTEMBER2F_DEFAULT
        dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_MTEMBER2F_START_BATTLE
        dw_const EndTrainerBattle,                      SCRIPT_MTEMBER2F_END_BATTLE

MtEmber2F_TextPointers:
        def_text_pointers
        dw_const MtEmber2FHikerText,      TEXT_MTEMBER2F_HIKER
        dw_const MtEmber2FBurglarText,    TEXT_MTEMBER2F_BURGLAR
        dw_const MtEmber2FPokemaniacText, TEXT_MTEMBER2F_POKEMANIAC
        dw_const PickUpItemText,          TEXT_MTEMBER2F_FIRE_STONE
        dw_const PickUpItemText,          TEXT_MTEMBER2F_MAX_REVIVE
        dw_const PickUpItemText,          TEXT_MTEMBER2F_TM43

MtEmber2FTrainerHeaders:
        def_trainers
MtEmber2FTrainerHeader0:
        trainer EVENT_BEAT_MT_EMBER_2F_TRAINER_0, 3, MtEmber2FBattleText1, MtEmber2FEndBattleText1, MtEmber2FAfterBattleText1
MtEmber2FTrainerHeader1:
        trainer EVENT_BEAT_MT_EMBER_2F_TRAINER_1, 3, MtEmber2FBattleText2, MtEmber2FEndBattleText2, MtEmber2FAfterBattleText2
MtEmber2FTrainerHeader2:
        trainer EVENT_BEAT_MT_EMBER_2F_TRAINER_2, 3, MtEmber2FBattleText3, MtEmber2FEndBattleText3, MtEmber2FAfterBattleText3
        db -1 ; end

MtEmber2FHikerText:
        text_asm
        ld hl, MtEmber2FTrainerHeader0
        call TalkToTrainer
        jp TextScriptEnd

MtEmber2FBurglarText:
        text_asm
        ld hl, MtEmber2FTrainerHeader1
        call TalkToTrainer
        jp TextScriptEnd

MtEmber2FPokemaniacText:
        text_asm
        ld hl, MtEmber2FTrainerHeader2
        call TalkToTrainer
        jp TextScriptEnd

MtEmber2FBattleText1:
        text_far _MtEmber2FBattleText1
        text_end

MtEmber2FEndBattleText1:
        text_far _MtEmber2FEndBattleText1
        text_end

MtEmber2FAfterBattleText1:
        text_far _MtEmber2FAfterBattleText1
        text_end

MtEmber2FBattleText2:
        text_far _MtEmber2FBattleText2
        text_end

MtEmber2FEndBattleText2:
        text_far _MtEmber2FEndBattleText2
        text_end

MtEmber2FAfterBattleText2:
        text_far _MtEmber2FAfterBattleText2
        text_end

MtEmber2FBattleText3:
        text_far _MtEmber2FBattleText3
        text_end

MtEmber2FEndBattleText3:
        text_far _MtEmber2FEndBattleText3
        text_end

MtEmber2FAfterBattleText3:
        text_far _MtEmber2FAfterBattleText3
        text_end
