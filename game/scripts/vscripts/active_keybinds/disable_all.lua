require('active_keybinds.util')

if (active_keybinds == nil) then
    active_keybinds = class({})
end
if (active_keybinds.table == nil) then
    active_keybinds.table = {}
end

function active_keybinds.initialize_disable_keybind_commands()
    Convars:RegisterCommand("aim_disable_primary_ability1_keybind", active_keybinds.disable_primary_ability1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_primary_ability2_keybind", active_keybinds.disable_primary_ability2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_primary_ability3_keybind", active_keybinds.disable_primary_ability3, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_secondary_ability1_keybind", active_keybinds.disable_secondary_ability1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_secondary_ability2_keybind", active_keybinds.disable_secondary_ability2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_ultimate_ability_keybind", active_keybinds.disable_ultimate_ability, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_item1_keybind", active_keybinds.disable_item1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_item2_keybind", active_keybinds.disable_item2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_item3_keybind", active_keybinds.disable_item3, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_item4_keybind", active_keybinds.disable_item4, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_item5_keybind", active_keybinds.disable_item5, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_item6_keybind", active_keybinds.disable_item6, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_neutral_item_keybind", active_keybinds.disable_neutral_item, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_teleport_scroll_keybind", active_keybinds.disable_teleport_scroll, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_attack_keybind", active_keybinds.disable_attack, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_move_keybind", active_keybinds.disable_move, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_stop_keybind", active_keybinds.disable_stop, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_quickbuy_keybind", active_keybinds.disable_quickbuy, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_sticky_buy_keybind", active_keybinds.disable_sticky_buy, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_open_shop_keybind", active_keybinds.disable_open_shop, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_deliver_items_keybind", active_keybinds.disable_deliver_items, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_select_hero_keybind", active_keybinds.disable_select_hero, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_select_courier_keybind", active_keybinds.disable_select_courier, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_left_mouse_keybind", active_keybinds.disable_left_mouse, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_right_mouse_keybind", active_keybinds.disable_right_mouse, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_camera_grip_keybind", active_keybinds.disable_camera_grip, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_scoreboard_keybind", active_keybinds.disable_scoreboard, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit1_keybind", active_keybinds.disable_unit1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit2_keybind", active_keybinds.disable_unit2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit3_keybind", active_keybinds.disable_unit3, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit4_keybind", active_keybinds.disable_unit4, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit5_keybind", active_keybinds.disable_unit5, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit6_keybind", active_keybinds.disable_unit6, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit7_keybind", active_keybinds.disable_unit7, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit8_keybind", active_keybinds.disable_unit8, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit9_keybind", active_keybinds.disable_unit9, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit10_keybind", active_keybinds.disable_unit10, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_next_unit_keybind", active_keybinds.disable_next_unit, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_prev_unit_keybind", active_keybinds.disable_prev_unit, "", FCVAR_ARCHIVE)
end

function active_keybinds.disable_all_keybinds()

    active_keybinds.disable("primary_ability1")
    active_keybinds.disable("primary_ability2")
    active_keybinds.disable("primary_ability3")
    active_keybinds.disable("secondary_ability1")
    active_keybinds.disable("secondary_ability2")
    active_keybinds.disable("ultimate_ability")
    active_keybinds.disable("item1")
    active_keybinds.disable("item2")
    active_keybinds.disable("item3")
    active_keybinds.disable("item4")
    active_keybinds.disable("item5")
    active_keybinds.disable("item6")
    active_keybinds.disable("neutral_item")
    active_keybinds.disable("teleport_scroll")
    active_keybinds.disable("attack")
    active_keybinds.disable("move")
    active_keybinds.disable("stop")
    active_keybinds.disable("quickbuy")
    active_keybinds.disable("sticky_buy")
    active_keybinds.disable("open_shop")
    active_keybinds.disable("deliver_items")
    active_keybinds.disable("select_hero")
    active_keybinds.disable("select_courier")
    active_keybinds.disable("left_mouse")
    active_keybinds.disable("right_mouse")
    active_keybinds.disable("camera_grip")
    active_keybinds.disable("scoreboard")
    active_keybinds.disable("unit1")
    active_keybinds.disable("unit2")
    active_keybinds.disable("unit3")
    active_keybinds.disable("unit4")
    active_keybinds.disable("unit5")
    active_keybinds.disable("unit6")
    active_keybinds.disable("unit7")
    active_keybinds.disable("unit8")
    active_keybinds.disable("unit9")
    active_keybinds.disable("unit10")
    active_keybinds.disable("next_unit")
    active_keybinds.disable("prev_unit")

    active_keybinds.size = 0
end

function active_keybinds.disable_primary_ability1()
    active_keybinds.disable("primary_ability1")
end

function active_keybinds.disable_primary_ability2()
    active_keybinds.disable("primary_ability2")
end

function active_keybinds.disable_primary_ability3()
    active_keybinds.disable("primary_ability3")
end

function active_keybinds.disable_secondary_ability1()
    active_keybinds.disable("secondary_ability1")
end

function active_keybinds.disable_secondary_ability2()
    active_keybinds.disable("secondary_ability2")
end

function active_keybinds.disable_ultimate_ability()
    active_keybinds.disable("ultimate_ability")
end

function active_keybinds.disable_item1()
    active_keybinds.disable("item1")
end

function active_keybinds.disable_item2()
    active_keybinds.disable("item2")
end

function active_keybinds.disable_item3()
    active_keybinds.disable("item3")
end

function active_keybinds.disable_item4()
    active_keybinds.disable("item4")
end

function active_keybinds.disable_item5()
    active_keybinds.disable("item5")
end

function active_keybinds.disable_item6()
    active_keybinds.disable("item6")
end

function active_keybinds.disable_neutral_item()
    active_keybinds.disable("neutral_item")
end

function active_keybinds.disable_teleport_scroll()
    active_keybinds.disable("teleport_scroll")
end

function active_keybinds.disable_attack()
    active_keybinds.disable("attack")
end

function active_keybinds.disable_move()
    active_keybinds.disable("move")
end

function active_keybinds.disable_stop()
    active_keybinds.disable("stop")
end

function active_keybinds.disable_quickbuy()
    active_keybinds.disable("quickbuy")
end

function active_keybinds.disable_sticky_buy()
    active_keybinds.disable("sticky_buy")
end

function active_keybinds.disable_open_shop()
    active_keybinds.disable("open_shop")
end

function active_keybinds.disable_deliver_items()
    active_keybinds.disable("deliver_items")
end

function active_keybinds.disable_select_hero()
    active_keybinds.disable("select_hero")
end

function active_keybinds.disable_select_courier()
    active_keybinds.disable("select_courier")
end

function active_keybinds.disable_left_mouse()
    active_keybinds.disable("left_mouse")
end

function active_keybinds.disable_right_mouse()
    active_keybinds.disable("right_mouse")
end

function active_keybinds.disable_camera_grip()
    active_keybinds.disable("camera_grip")
end

function active_keybinds.disable_scoreboard()
    active_keybinds.disable("scoreboard")
end

function active_keybinds.disable_unit1()
    active_keybinds.disable("unit1")
end

function active_keybinds.disable_unit2()
    active_keybinds.disable("unit2")
end

function active_keybinds.disable_unit3()
    active_keybinds.disable("unit3")
end

function active_keybinds.disable_unit4()
    active_keybinds.disable("unit4")
end

function active_keybinds.disable_unit5()
    active_keybinds.disable("unit5")
end

function active_keybinds.disable_unit6()
    active_keybinds.disable("unit6")
end

function active_keybinds.disable_unit7()
    active_keybinds.disable("unit7")
end

function active_keybinds.disable_unit8()
    active_keybinds.disable("unit8")
end

function active_keybinds.disable_unit9()
    active_keybinds.disable("unit9")
end

function active_keybinds.disable_unit10()
    active_keybinds.disable("unit10")
end

function active_keybinds.disable_next_unit()
    active_keybinds.disable("next_unit")
end

function active_keybinds.disable_prev_unit()
    active_keybinds.disable("prev_unit")
end

