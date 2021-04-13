require('active_keybinds.util')

if (active_keybinds == nil) then
    active_keybinds = class({})
end
if (active_keybinds.table == nil) then
    active_keybinds.table = {}
end

function active_keybinds.initialize()
    active_keybinds.size = 39

    active_keybinds.table["primary_ability1"] = true
    active_keybinds.table["primary_ability2"] = true
    active_keybinds.table["primary_ability3"] = true
    active_keybinds.table["secondary_ability1"] = true
    active_keybinds.table["secondary_ability2"] = true
    active_keybinds.table["ultimate_ability"] = true
    active_keybinds.table["item1"] = true
    active_keybinds.table["item2"] = true
    active_keybinds.table["item3"] = true
    active_keybinds.table["item4"] = true
    active_keybinds.table["item5"] = true
    active_keybinds.table["item6"] = true
    active_keybinds.table["neutral_item"] = true
    active_keybinds.table["teleport_scroll"] = true
    active_keybinds.table["attack"] = true
    active_keybinds.table["move"] = true
    active_keybinds.table["stop"] = true
    active_keybinds.table["quickbuy"] = true
    active_keybinds.table["sticky_buy"] = true
    active_keybinds.table["open_shop"] = true
    active_keybinds.table["deliver_items"] = true
    active_keybinds.table["select_hero"] = true
    active_keybinds.table["select_courier"] = true
    active_keybinds.table["left_mouse"] = true
    active_keybinds.table["right_mouse"] = true
    active_keybinds.table["camera_grip"] = true
    active_keybinds.table["scoreboard"] = true
    active_keybinds.table["unit1"] = true
    active_keybinds.table["unit2"] = true
    active_keybinds.table["unit3"] = true
    active_keybinds.table["unit4"] = true
    active_keybinds.table["unit5"] = true
    active_keybinds.table["unit6"] = true
    active_keybinds.table["unit7"] = true
    active_keybinds.table["unit8"] = true
    active_keybinds.table["unit9"] = true
    active_keybinds.table["unit10"] = true
    active_keybinds.table["next_unit"] = true
    active_keybinds.table["prev_unit"] = true


    keybind_flag = Convars:GetBool("aim_primary_ability1_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("primary_ability1")
    end

    keybind_flag = Convars:GetBool("aim_primary_ability2_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("primary_ability2")
    end

    keybind_flag = Convars:GetBool("aim_primary_ability3_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("primary_ability3")
    end

    keybind_flag = Convars:GetBool("aim_secondary_ability1_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("secondary_ability1")
    end

    keybind_flag = Convars:GetBool("aim_secondary_ability2_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("secondary_ability2")
    end

    keybind_flag = Convars:GetBool("aim_ultimate_ability_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("ultimate_ability")
    end

    keybind_flag = Convars:GetBool("aim_item1_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("item1")
    end

    keybind_flag = Convars:GetBool("aim_item2_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("item2")
    end

    keybind_flag = Convars:GetBool("aim_item3_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("item3")
    end

    keybind_flag = Convars:GetBool("aim_item4_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("item4")
    end

    keybind_flag = Convars:GetBool("aim_item5_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("item5")
    end

    keybind_flag = Convars:GetBool("aim_item6_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("item6")
    end

    keybind_flag = Convars:GetBool("aim_neutral_item_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("neutral_item")
    end

    keybind_flag = Convars:GetBool("aim_teleport_scroll_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("teleport_scroll")
    end

    keybind_flag = Convars:GetBool("aim_attack_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("attack")
    end

    keybind_flag = Convars:GetBool("aim_move_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("move")
    end

    keybind_flag = Convars:GetBool("aim_stop_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("stop")
    end

    keybind_flag = Convars:GetBool("aim_quickbuy_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("quickbuy")
    end

    keybind_flag = Convars:GetBool("aim_sticky_buy_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("sticky_buy")
    end

    keybind_flag = Convars:GetBool("aim_open_shop_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("open_shop")
    end

    keybind_flag = Convars:GetBool("aim_deliver_items_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("deliver_items")
    end

    keybind_flag = Convars:GetBool("aim_select_hero_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("select_hero")
    end

    keybind_flag = Convars:GetBool("aim_select_courier_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("select_courier")
    end

    keybind_flag = Convars:GetBool("aim_left_mouse_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("left_mouse")
    end

    keybind_flag = Convars:GetBool("aim_right_mouse_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("right_mouse")
    end

    keybind_flag = Convars:GetBool("aim_camera_grip_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("camera_grip")
    end

    keybind_flag = Convars:GetBool("aim_scoreboard_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("scoreboard")
    end

    keybind_flag = Convars:GetBool("aim_unit1_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit1")
    end

    keybind_flag = Convars:GetBool("aim_unit2_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit2")
    end

    keybind_flag = Convars:GetBool("aim_unit3_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit3")
    end

    keybind_flag = Convars:GetBool("aim_unit4_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit4")
    end

    keybind_flag = Convars:GetBool("aim_unit5_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit5")
    end

    keybind_flag = Convars:GetBool("aim_unit6_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit6")
    end

    keybind_flag = Convars:GetBool("aim_unit7_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit7")
    end

    keybind_flag = Convars:GetBool("aim_unit8_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit8")
    end

    keybind_flag = Convars:GetBool("aim_unit9_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit9")
    end

    keybind_flag = Convars:GetBool("aim_unit10_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("unit10")
    end

    keybind_flag = Convars:GetBool("aim_next_unit_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("next_unit")
    end

    keybind_flag = Convars:GetBool("aim_prev_unit_active")
    if (keybind_flag ~= true) then
        active_keybinds.disable("prev_unit")
    end

end