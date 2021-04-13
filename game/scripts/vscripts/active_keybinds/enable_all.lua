require('active_keybinds.util')

if (active_keybinds == nil) then
    active_keybinds = class({})
end
if (active_keybinds.table == nil) then
    active_keybinds.table = {}
end

function active_keybinds.initialize_enable_keybind_commands()
    Convars:RegisterCommand("aim_enable_primary_ability1_keybind", active_keybinds.enable_primary_ability1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_primary_ability2_keybind", active_keybinds.enable_primary_ability2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_primary_ability3_keybind", active_keybinds.enable_primary_ability3, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_secondary_ability1_keybind", active_keybinds.enable_secondary_ability1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_secondary_ability2_keybind", active_keybinds.enable_secondary_ability2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_ultimate_ability_keybind", active_keybinds.enable_ultimate_ability, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_item1_keybind", active_keybinds.enable_item1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_item2_keybind", active_keybinds.enable_item2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_item3_keybind", active_keybinds.enable_item3, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_item4_keybind", active_keybinds.enable_item4, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_item5_keybind", active_keybinds.enable_item5, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_item6_keybind", active_keybinds.enable_item6, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_neutral_item_keybind", active_keybinds.enable_neutral_item, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_teleport_scroll_keybind", active_keybinds.enable_teleport_scroll, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_attack_keybind", active_keybinds.enable_attack, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_move_keybind", active_keybinds.enable_move, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_stop_keybind", active_keybinds.enable_stop, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_quickbuy_keybind", active_keybinds.enable_quickbuy, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_sticky_buy_keybind", active_keybinds.enable_sticky_buy, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_open_shop_keybind", active_keybinds.enable_open_shop, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_deliver_items_keybind", active_keybinds.enable_deliver_items, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_select_hero_keybind", active_keybinds.enable_select_hero, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_select_courier_keybind", active_keybinds.enable_select_courier, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_left_mouse_keybind", active_keybinds.enable_left_mouse, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_right_mouse_keybind", active_keybinds.enable_right_mouse, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_camera_grip_keybind", active_keybinds.enable_camera_grip, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_scoreboard_keybind", active_keybinds.enable_scoreboard, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit1_keybind", active_keybinds.enable_unit1, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit2_keybind", active_keybinds.enable_unit2, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit3_keybind", active_keybinds.enable_unit3, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit4_keybind", active_keybinds.enable_unit4, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit5_keybind", active_keybinds.enable_unit5, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit6_keybind", active_keybinds.enable_unit6, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit7_keybind", active_keybinds.enable_unit7, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit8_keybind", active_keybinds.enable_unit8, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit9_keybind", active_keybinds.enable_unit9, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit10_keybind", active_keybinds.enable_unit10, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_next_unit_keybind", active_keybinds.enable_next_unit, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_prev_unit_keybind", active_keybinds.enable_prev_unit, "", FCVAR_ARCHIVE)
end

function active_keybinds.enable_all()
    active_keybinds.size = 0

    active_keybinds.enable("primary_ability1")
    active_keybinds.enable("primary_ability2")
    active_keybinds.enable("primary_ability3")
    active_keybinds.enable("secondary_ability1")
    active_keybinds.enable("secondary_ability2")
    active_keybinds.enable("ultimate_ability")
    active_keybinds.enable("item1")
    active_keybinds.enable("item2")
    active_keybinds.enable("item3")
    active_keybinds.enable("item4")
    active_keybinds.enable("item5")
    active_keybinds.enable("item6")
    active_keybinds.enable("neutral_item")
    active_keybinds.enable("teleport_scroll")
    active_keybinds.enable("attack")
    active_keybinds.enable("move")
    active_keybinds.enable("stop")
    active_keybinds.enable("quickbuy")
    active_keybinds.enable("sticky_buy")
    active_keybinds.enable("open_shop")
    active_keybinds.enable("deliver_items")
    active_keybinds.enable("select_hero")
    active_keybinds.enable("select_courier")
    active_keybinds.enable("left_mouse")
    active_keybinds.enable("right_mouse")
    active_keybinds.enable("camera_grip")
    active_keybinds.enable("scoreboard")
    active_keybinds.enable("unit1")
    active_keybinds.enable("unit2")
    active_keybinds.enable("unit3")
    active_keybinds.enable("unit4")
    active_keybinds.enable("unit5")
    active_keybinds.enable("unit6")
    active_keybinds.enable("unit7")
    active_keybinds.enable("unit8")
    active_keybinds.enable("unit9")
    active_keybinds.enable("unit10")
    active_keybinds.enable("next_unit")
    active_keybinds.enable("prev_unit")
end

function active_keybinds.enable_primary_ability1()
    active_keybinds.enable("primary_ability1")
end
function active_keybinds.enable_primary_ability2()
    active_keybinds.enable("primary_ability2")
end
function active_keybinds.enable_primary_ability3()
    active_keybinds.enable("primary_ability3")
end
function active_keybinds.enable_secondary_ability1()
    active_keybinds.enable("secondary_ability1")
end
function active_keybinds.enable_secondary_ability2()
    active_keybinds.enable("secondary_ability2")
end
function active_keybinds.enable_ultimate_ability()
    active_keybinds.enable("ultimate_ability")
end
function active_keybinds.enable_item1()
    active_keybinds.enable("item1")
end
function active_keybinds.enable_item2()
    active_keybinds.enable("item2")
end
function active_keybinds.enable_item3()
    active_keybinds.enable("item3")
end
function active_keybinds.enable_item4()
    active_keybinds.enable("item4")
end
function active_keybinds.enable_item5()
    active_keybinds.enable("item5")
end
function active_keybinds.enable_item6()
    active_keybinds.enable("item6")
end
function active_keybinds.enable_neutral_item()
    active_keybinds.enable("neutral_item")
end
function active_keybinds.enable_teleport_scroll()
    active_keybinds.enable("teleport_scroll")
end
function active_keybinds.enable_attack()
    active_keybinds.enable("attack")
end
function active_keybinds.enable_move()
    active_keybinds.enable("move")
end
function active_keybinds.enable_stop()
    active_keybinds.enable("stop")
end
function active_keybinds.enable_quickbuy()
    active_keybinds.enable("quickbuy")
end
function active_keybinds.enable_sticky_buy()
    active_keybinds.enable("sticky_buy")
end
function active_keybinds.enable_open_shop()
    active_keybinds.enable("open_shop")
end
function active_keybinds.enable_deliver_items()
    active_keybinds.enable("deliver_items")
end
function active_keybinds.enable_select_hero()
    active_keybinds.enable("select_hero")
end
function active_keybinds.enable_select_courier()
    active_keybinds.enable("select_courier")
end
function active_keybinds.enable_left_mouse()
    active_keybinds.enable("left_mouse")
end
function active_keybinds.enable_right_mouse()
    active_keybinds.enable("right_mouse")
end
function active_keybinds.enable_camera_grip()
    active_keybinds.enable("camera_grip")
end
function active_keybinds.enable_scoreboard()
    active_keybinds.enable("scoreboard")
end
function active_keybinds.enable_unit1()
    active_keybinds.enable("unit1")
end
function active_keybinds.enable_unit2()
    active_keybinds.enable("unit2")
end
function active_keybinds.enable_unit3()
    active_keybinds.enable("unit3")
end
function active_keybinds.enable_unit4()
    active_keybinds.enable("unit4")
end
function active_keybinds.enable_unit5()
    active_keybinds.enable("unit5")
end
function active_keybinds.enable_unit6()
    active_keybinds.enable("unit6")
end
function active_keybinds.enable_unit7()
    active_keybinds.enable("unit7")
end
function active_keybinds.enable_unit8()
    active_keybinds.enable("unit8")
end
function active_keybinds.enable_unit9()
    active_keybinds.enable("unit9")
end
function active_keybinds.enable_unit10()
    active_keybinds.enable("unit10")
end
function active_keybinds.enable_next_unit()
    active_keybinds.enable("next_unit")
end
function active_keybinds.enable_prev_unit()
    active_keybinds.enable("prev_unit")
end
