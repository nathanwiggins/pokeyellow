BillRandomTeam:
        ld a, [wTrainerClass]
        cp BILL
        ret nz
        ld hl, wEnemyPartyCount
        xor a
        ld [hli], a
        dec a
        ld [hl], a
        ld b, 3
.loop
        call Random
        cp NUM_POKEMON
        jr nc, .loop
        inc a
        ld [wCurPartySpecies], a
        ld a, 100
        ld [wCurEnemyLevel], a
        ld a, ENEMY_PARTY_DATA
        ld [wMonDataLocation], a
        call AddPartyMon
        dec b
        jr nz, .loop
        ret
