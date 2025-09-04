LoadWildData::
	ld hl, WildDataPointers
	ld a, [wCurMap]

	; get wild data for current map
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a       ; hl now points to wild data for current map
	ld a, [hli]
	ld [wGrassRate], a
	and a
    jr z, .NoGrassData ; if no grass data, skip to surfing data
    push hl
    ld de, wGrassMons ; otherwise, load grass data
    ld bc, $14
    call CopyData
    ld hl, wGrassMons
    call ApplyRandomWildMonClasses
    pop hl
    ld bc, $14
    add hl, bc
.NoGrassData
    ld a, [hli]
    ld [wWaterRate], a
    and a
    ret z        ; if no water data, we're done
    ld de, wWaterMons  ; otherwise, load surfing data
    ld bc, $14
    call CopyData
    ld hl, wWaterMons
    call ApplyRandomWildMonClasses
    ret

ApplyRandomWildMonClasses:
    ld b, 10
.loop
    inc hl
    ld a, [hl]
    cp FIRST_RANDOM_CLASS
    jr c, .skip
    push bc
    push hl
    sub FIRST_RANDOM_CLASS
    ld c, a
    ld b, 0
    ld hl, wRandomWildMonClasses
    add hl, bc
    ld a, [hl]
    pop hl
    ld [hl], a
    pop bc
.skip
    inc hl
    dec b
    jr nz, .loop
    ret

ResolveRandomWildMon:
    cp FIRST_RANDOM_CLASS
    ret c
    sub FIRST_RANDOM_CLASS
    ld c, a
    ld b, 0
    ld hl, wRandomWildMonClasses
    add hl, bc
    ld a, [hl]
    ret

InitRandomWildMonClasses:
    ld hl, RandomWildClassPointers
    ld de, wRandomWildMonClasses
    ld a, NUM_RANDOM_CLASSES
.classLoop
    push af
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld h, b
    ld l, c
    ld a, [hli]
    ld c, a
.pick
    call Random
    ld a, [hRandomAdd]
    cp c
    jr nc, .pick
    ld c, a
    ld b, 0
    add hl, bc
    ld a, [hl]
    pop hl
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, .classLoop
    ret

INCLUDE "data/wild/grass_water.asm"
INCLUDE "data/wild/random_classes.asm"
