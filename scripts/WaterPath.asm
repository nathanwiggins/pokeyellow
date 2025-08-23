WaterPath_Script:
        call EnableAutoTextBoxDrawing
        ld hl, WaterPathTrainerHeaders
        ld de, WaterPath_ScriptPointers
        ld a, [wWaterPathCurScript]
        call ExecuteCurMapScriptInTable
        ld [wWaterPathCurScript], a
        ret

WaterPath_ScriptPointers:
        def_script_pointers
        dw_const CheckFightingMapTrainers,              SCRIPT_WATER_PATH_DEFAULT
        dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_WATER_PATH_START_BATTLE
        dw_const EndTrainerBattle,                      SCRIPT_WATER_PATH_END_BATTLE

WaterPath_TextPointers:
        def_text_pointers
        dw_const PickUpItemText,          TEXT_WATER_PATH_RARE_CANDY_1
        dw_const PickUpItemText,          TEXT_WATER_PATH_RARE_CANDY_2
        dw_const PickUpItemText,          TEXT_WATER_PATH_RARE_CANDY_3

WaterPathTrainerHeaders:
        def_trainers
        db -1 ; end
