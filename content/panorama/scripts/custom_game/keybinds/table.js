export var ability_keybinds = {

    primary_ability1 : {
        command : "keybind_cast_primary_ability1",
        ability_index : 0
    },

    primary_ability2 : {
        command : "keybind_cast_primary_ability2",
        ability_index : 1
    },

    primary_ability3 : {
        command : "keybind_cast_primary_ability3",
        ability_index : 2
    },

    secondary_ability1 : {
        command : "keybind_cast_secondary_ability1",
        ability_index : 3
    },

    secondary_ability2 : {
        command : "keybind_cast_secondary_ability2",
        ability_index : 4
    },

    ultimate_ability : {
        command : "keybind_cast_ultimate_ability",
        ability_index : 5
    },

    item1 : {
        command : "keybind_cast_item1",
    },

    item2 : {
        command : "keybind_cast_item2",
    },

    item3 : {
        command : "keybind_cast_item3",
    },

    item4 : {
        command : "keybind_cast_item4",
    },

    item5 : {
        command : "keybind_cast_item5",
    },

    item6 : {
        command : "keybind_cast_item6",
    },

    neutral_item : {
        command : "keybind_cast_neutral_item",
    },

    teleport_scroll : {
        command : "keybind_cast_teleport_scroll",
    },

    attack : {
        command : "keybind_cast_attack",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_HERO_ATTACK).replace("ALT-", "ALT+"),
        ability_index : 6
    },

    move : {
        command : "keybind_cast_move",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_HERO_MOVE).replace("ALT-", "ALT+"),
        ability_index : 7
    },

    stop : {
        command : "keybind_cast_stop",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_HERO_STOP).replace("ALT-", "ALT+"),
        ability_index : 8
    },

    quickbuy : {
        command : "keybind_cast_quickbuy",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_PURCHASE_QUICKBUY).replace("ALT-", "ALT+"),
        ability_index : 9
    },

    sticky_buy : {
        command : "keybind_cast_sticky_buy",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_PURCHASE_STICKY).replace("ALT-", "ALT+"),
        ability_index : 10
    },

    open_shop : {
        command : "keybind_cast_open_shop",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_SHOP_TOGGLE).replace("ALT-", "ALT+"),
        ability_index : 11
    },

    deliver_items : {
        command : "keybind_cast_deliver_items",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_COURIER_DELIVER).replace("ALT-", "ALT+"),
        ability_index : 12
    },

    select_hero : {
        command : "keybind_cast_select_hero",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_HERO_SELECT).replace("ALT-", "ALT+"),
        ability_index : 13
    },

    select_courier : {
        command : "keybind_cast_select_courier",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_COURIER_SELECT).replace("ALT-", "ALT+"),
        ability_index : 14
    },

    left_mouse : {
        command : "keybind_cast_left_mouse",
        ability_index : 15
    },

    right_mouse : {
        command : "keybind_cast_right_mouse",
        ability_index : 16
    },

    camera_grip : {
        command : "keybind_cast_camera_grip",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CAMERA_GRIP).replace("ALT-", "ALT+"),
        ability_index : 17
    },

    scoreboard : {
        command : "keybind_cast_scoreboard",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_SCOREBOARD_TOGGLE).replace("ALT-", "ALT+"),
        ability_index : 18
    },

    unit1 : {
        command : "keybind_cast_unit1",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP1).replace("ALT-", "ALT+"),
        ability_index : 19
    },

    unit2 : {
        command : "keybind_cast_unit2",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP2).replace("ALT-", "ALT+"),
        ability_index : 20
    },

    unit3 : {
        command : "keybind_cast_unit3",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP3).replace("ALT-", "ALT+"),
        ability_index : 21
    },

    unit4 : {
        command : "keybind_cast_unit4",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP4).replace("ALT-", "ALT+"),
        ability_index : 22
    },

    unit5 : {
        command : "keybind_cast_unit5",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP5).replace("ALT-", "ALT+"),
        ability_index : 23
    },

    unit6 : {
        command : "keybind_cast_unit6",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP6).replace("ALT-", "ALT+"),
        ability_index : 24
    },

    unit7 : {
        command : "keybind_cast_unit7",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP7).replace("ALT-", "ALT+"),
        ability_index : 25
    },

    unit8 : {
        command : "keybind_cast_unit8",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP8).replace("ALT-", "ALT+"),
        ability_index : 26
    },

    unit9 : {
        command : "keybind_cast_unit9",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP9).replace("ALT-", "ALT+"),
        ability_index : 27
    },

    unit10 : {
        command : "keybind_cast_unit10",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUP10).replace("ALT-", "ALT+"),
        ability_index : 28
    },

    next_unit : {
        command : "keybind_cast_next_unit",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUPCYCLE).replace("ALT-", "ALT+"),
        ability_index : 29
    },

    prev_unit : {
        command : "keybind_cast_prev_unit",
        keybind : Game.GetKeybindForCommand(DOTAKeybindCommand_t.DOTA_KEYBIND_CONTROL_GROUPCYCLEPREV).replace("ALT-", "ALT+"),
        ability_index : 30
    },

}