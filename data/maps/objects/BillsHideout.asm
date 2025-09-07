        object_const_def
        const_export BILLSHIDEOUT_BILL

BillsHideout_Object:
        db $a ; border block

        def_warp_events
        warp_event  2,  7, LAST_MAP, 2
        warp_event  3,  7, LAST_MAP, 2

        def_bg_events

        def_object_events
        object_event  4,  4, SPRITE_SUPER_NERD, STAY, DOWN, TEXT_BILLSHIDEOUT_BILL, OPP_BILL, 1

        def_warps_to BILLS_HIDEOUT
