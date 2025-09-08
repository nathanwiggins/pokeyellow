BillsHideout_Script:
        call EnableAutoTextBoxDrawing
        ld hl, 0
        ld de, BillsHideout_ScriptPointers
        ld a, [wBillsHideoutCurScript]
        call ExecuteCurMapScriptInTable
        ld [wBillsHideoutCurScript], a
        ret

BillsHideout_ScriptPointers:
        def_script_pointers
        dw_const BillsHideoutDefaultScript, SCRIPT_BILLSHIDEOUT_DEFAULT
        dw_const EndTrainerBattle,      SCRIPT_BILLSHIDEOUT_END_BATTLE

BillsHideoutDefaultScript:
        ret

BillsHideout_TextPointers:
        def_text_pointers
        dw_const BillsHideoutBillText, TEXT_BILLSHIDEOUT_BILL

BillsHideoutBillText:
        text_asm
        ld hl, BillsHideoutBillGreetingText
        call PrintText
        call YesNoChoice
        ld a, [wCurrentMenuItem]
        and a
        jr nz, .declined
        ld hl, BillsHideoutBillBattleStartText
        call PrintText
        call WaitForTextScrollButtonPress
        ld de, .startBattle
        push de
        ldh a, [hLoadedROMBank]
        push af
        jp CloseTextDisplay
.startBattle
        call StartBillBattle
        jp TextScriptEnd
.declined
        ld hl, BillsHideoutBillDeclinedText
        call PrintText
        jp TextScriptEnd

StartBillBattle:
        ld a, OPP_BILL
        ld [wCurOpponent], a
        ld [wEnemyMonOrTrainerClass], a
        ld a, 1
        ld [wTrainerNo], a
        xor a
        ld [wLoneAttackNo], a
        ld hl, BillsHideoutBillWinText
        ld de, BillsHideoutBillLoseText
        call SaveEndBattleTextPointers
        ld hl, wStatusFlags3
        set BIT_TALKED_TO_TRAINER, [hl]
        set BIT_PRINT_END_BATTLE_TEXT, [hl]
        ld hl, wStatusFlags4
        set BIT_UNKNOWN_4_1, [hl]
        xor a
        ld [wJoyIgnore], a
        ld a, SCRIPT_BILLSHIDEOUT_END_BATTLE
        ld [wBillsHideoutCurScript], a
        callfar InitBattle
        ret

BillsHideoutBillGreetingText:
        text_far _BillsHideoutBillGreetingText
        text_end

BillsHideoutBillBattleStartText:
        text_far _BillsHideoutBillBattleStartText
        text_end

BillsHideoutBillWinText:
        text_far _BillsHideoutBillWinText
        text_end

BillsHideoutBillLoseText:
        text_far _BillsHideoutBillLoseText
        text_end

BillsHideoutBillDeclinedText:
        text_far _BillsHideoutBillDeclinedText
        text_end
