PokemonTemple_Script:
        call EnableAutoTextBoxDrawing
        ld hl, PokemonTempleTrainerHeaders
        ld de, PokemonTemple_ScriptPointers
        ld a, [wPokemonTempleCurScript]
        call ExecuteCurMapScriptInTable
        ld [wPokemonTempleCurScript], a
        ret

PokemonTemple_ScriptPointers:
        def_script_pointers
        dw_const CheckFightingMapTrainers,              SCRIPT_POKEMONTEMPLE_DEFAULT
        dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_POKEMONTEMPLE_START_BATTLE
        dw_const EndTrainerBattle,                      SCRIPT_POKEMONTEMPLE_END_BATTLE

PokemonTemple_TextPointers:
        def_text_pointers
        dw_const PokemonTempleMewText, TEXT_POKEMONTEMPLE_MEW

PokemonTempleTrainerHeaders:
        def_trainers
PokemonTempleMewTrainerHeader:
        trainer EVENT_BEAT_MEW, 0, PokemonTempleMewBattleText, PokemonTempleMewBattleText, PokemonTempleMewBattleText
        db -1 ; end

PokemonTempleMewText:
        text_asm
        ld hl, PokemonTempleMewTrainerHeader
        call TalkToTrainer
        jp TextScriptEnd

PokemonTempleMewBattleText:
        text_far _PokemonTempleMewBattleText
        text_asm
        ld a, MEW
        call PlayCry
        call WaitForSoundToFinish
        jp TextScriptEnd
