BillsHideout_Script:
        call EnableAutoTextBoxDrawing
        ld hl, BillsHideout_ScriptPointers
        ld a, [wBillsHideoutCurScript]
        call CallFunctionInTable
        ld [wBillsHideoutCurScript], a
        ret

BillsHideout_ScriptPointers:
        def_script_pointers
        dw_const BillsHideoutDefaultScript,     SCRIPT_BILLSHIDEOUT_DEFAULT
        dw_const BillsHideoutPostBattleScript,  SCRIPT_BILLSHIDEOUT_POST_BATTLE

BillsHideoutDefaultScript:
        ret

BillsHideoutPostBattleScript:
        ld a, [wIsInBattle]
        cp $ff
        jp z, BillsHideoutResetScripts
        call EndTrainerBattle
        ld a, [wBattleResult]
        and a
        jr nz, BillsHideoutResetScripts
        SetEvent EVENT_BEAT_BILL_HIDEOUT
        jr BillsHideoutResetScripts

BillsHideoutResetScripts:
        xor a
        ld [wJoyIgnore], a
        ld [wBillsHideoutCurScript], a
        ld [wCurMapScript], a
        ret

BillsHideout_TextPointers:
        def_text_pointers
        dw_const BillText, TEXT_BILLSHIDEOUT_BILL

BillText:
        text_asm
        CheckEvent EVENT_BEAT_BILL_HIDEOUT
        jr nz, .skip_intro
        ld hl, BillIntroText
        call PrintText
.skip_intro
        ld hl, BillChallengeText
        call PrintText
        call YesNoChoice
        ld a, [wCurrentMenuItem]
        and a
        jr nz, .declined
        ld hl, BillStartBattleText
        call PrintText
        ld hl, BillWinText
        ld de, BillLossText
        call SaveEndBattleTextPointers
        ld hl, wStatusFlags3
        set BIT_TALKED_TO_TRAINER, [hl]
        set BIT_PRINT_END_BATTLE_TEXT, [hl]
        ldh a, [hSpriteIndex]
        ld [wSpriteIndex], a
        call EngageMapTrainer
        xor a
        ld [wBillsHideoutCurScript], a
        ld [wCurMapScript], a
        call StartTrainerBattle
        jp TextScriptEnd
.declined
        ld hl, BillDeclineText
        call PrintText
        jp TextScriptEnd

BillIntroText:
        text_far _BillHideoutIntroText
        text_end

BillChallengeText:
        text_far _BillHideoutChallengeText
        text_end

BillStartBattleText:
        text_far _BillHideoutStartBattleText
        text_end

BillDeclineText:
        text_far _BillHideoutDeclineText
        text_end

BillWinText:
        text_far _BillHideoutWinText
        text_end

BillLossText:
        text_far _BillHideoutLossText
        text_end
