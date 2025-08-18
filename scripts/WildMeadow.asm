WildMeadow_Script:
        call EnableAutoTextBoxDrawing
        ld hl, WildMeadowTrainerHeaders
        ld de, WildMeadow_ScriptPointers
        ld a, [wWildMeadowCurScript]
        call ExecuteCurMapScriptInTable
        ld [wWildMeadowCurScript], a
        ret

WildMeadow_ScriptPointers:
        def_script_pointers
        dw_const CheckFightingMapTrainers,              SCRIPT_WILD_MEADOW_DEFAULT
        dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_WILD_MEADOW_START_BATTLE
        dw_const EndTrainerBattle,                      SCRIPT_WILD_MEADOW_END_BATTLE

WildMeadow_TextPointers:
        def_text_pointers
        dw_const PickUpItemText,          TEXT_WILD_MEADOW_MASTER_BALL
        dw_const PickUpItemText,          TEXT_WILD_MEADOW_NUGGET
        dw_const PickUpItemText,          TEXT_WILD_MEADOW_TM15

WildMeadowTrainerHeaders:
        def_trainers
        db -1 ; end
