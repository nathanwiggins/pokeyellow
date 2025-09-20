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
        ld hl, PokemonTemplePurifiedZoneCoords
        call ArePlayerCoordsInArray
        jr c, .in_purified_zone
        ld hl, wStatusFlags4
        res BIT_NO_BATTLES, [hl]
        ResetEvent EVENT_IN_PURIFIED_ZONE
        jr .check_mew
.in_purified_zone
        CheckAndSetEvent EVENT_IN_PURIFIED_ZONE
        ret nz
        xor a
        ldh [hJoyHeld], a
        ld a, PAD_CTRL_PAD
        ld [wJoyIgnore], a
        ld hl, wStatusFlags4
        set BIT_NO_BATTLES, [hl]
        predef HealParty
        call GBFadeOutToWhite
        call Delay3
        call Delay3
        call GBFadeInFromWhite
        ld a, TEXT_POKEMONTEMPLE_PURIFIEDZONE
        ldh [hTextID], a
        call DisplayTextID
        xor a
        ld [wJoyIgnore], a
        ret
.check_mew
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
        jp z, PokemonTempleResetScripts
        call UpdateSprites
        SetEvent EVENT_BEAT_MEW
        call Delay3
        ld a, SCRIPT_POKEMONTEMPLE_DEFAULT
        ld [wPokemonTempleCurScript], a
        ld [wCurMapScript], a
        ret

PokemonTemplePurifiedZoneCoords:
        dbmapcoord 10, 14
        dbmapcoord 10, 15
        dbmapcoord 11, 14
        dbmapcoord 11, 15
        db -1 ; end

PokemonTemple_TextPointers:
        def_text_pointers
        dw_const PokemonTempleMewText, TEXT_POKEMONTEMPLE_MEW
        dw_const PokemonTemplePurifiedZoneText, TEXT_POKEMONTEMPLE_PURIFIEDZONE

PokemonTempleMewText:
        text_far _PokemonTempleMewBattleText
        text_end

PokemonTemplePurifiedZoneText:
        text_far _PokemonTemplePurifiedZoneText
        text_end
