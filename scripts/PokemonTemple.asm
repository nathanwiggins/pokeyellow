PokemonTemple_Script:
        call EnableAutoTextBoxDrawing
        ld a, [wPokemonTempleCurScript]
        ld hl, PokemonTemple_ScriptPointers
        jp CallFunctionInTable

PokemonTempleResetScripts:
        xor a
        ld [wJoyIgnore], a
        ld [wPokemonTempleCurScript], a
        ld [wCurMapScript], a
        ret

PokemonTemple_ScriptPointers:
        def_script_pointers
        dw_const PokemonTempleDefaultScript, SCRIPT_POKEMONTEMPLE_DEFAULT
        dw_const PokemonTempleMewBattleScript, SCRIPT_POKEMONTEMPLE_MEW_BATTLE

PokemonTempleDefaultScript:
        CheckEvent EVENT_BEAT_MEW
        ret nz
        ld a, [wYCoord]
        cp 4
        ret nc
        ld a, TEXT_POKEMONTEMPLE_MEW
        ldh [hTextID], a
        call DisplayTextID
        ld a, MEW
        call PlayCry
        call WaitForSoundToFinish
        ld a, MEW
        ld [wCurOpponent], a
        ld a, 30
        ld [wCurEnemyLevel], a
        ld a, SCRIPT_POKEMONTEMPLE_MEW_BATTLE
        ld [wPokemonTempleCurScript], a
        ld [wCurMapScript], a
        ret

PokemonTempleMewBattleScript:
        ld a, [wIsInBattle]
        cp $ff
        jr z, PokemonTempleResetScripts
        call UpdateSprites
        SetEvent EVENT_BEAT_MEW
        call Delay3
        ld a, SCRIPT_POKEMONTEMPLE_DEFAULT
        ld [wPokemonTempleCurScript], a
        ld [wCurMapScript], a
        ret

PokemonTemple_TextPointers:
        def_text_pointers
        dw_const PokemonTempleMewText, TEXT_POKEMONTEMPLE_MEW

PokemonTempleMewText:
        text_far _PokemonTempleMewBattleText
        text_end
