BillsHideout_Script:
        jp EnableAutoTextBoxDrawing

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
        jr nz, .done
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
.done
        jp TextScriptEnd

StartBillBattle:
        ld a, OPP_BILL
        ld [wCurOpponent], a
        ld a, 1
        ld [wTrainerNo], a
        xor a
        ld [wLoneAttackNo], a
        callfar InitBattle
        ret

BillsHideoutBillGreetingText:
        text_far _BillsHideoutBillGreetingText
        text_end

BillsHideoutBillBattleStartText:
        text_far _BillsHideoutBillBattleStartText
        text_end
