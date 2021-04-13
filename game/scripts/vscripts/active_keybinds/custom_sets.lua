require ('active_keybinds.util')

function active_keybinds.initialize_custom_set_commands()
    Convars:RegisterCommand("aim_enable_spell_keybinds", active_keybinds.enable_spell_keybinds, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_spell_keybinds", active_keybinds.disable_spell_keybinds, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_unit_keybinds", active_keybinds.enable_unit_keybinds, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_unit_keybinds", active_keybinds.disable_unit_keybinds, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_enable_shop_keybinds", active_keybinds.enable_shop_keybinds, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_shop_keybinds", active_keybinds.disable_shop_keybinds, "", FCVAR_ARCHIVE)
end

local spell_keybind_set = {
    "primary_ability1",
    "primary_ability2",
    "primary_ability3",
    "secondary_ability1",
    "secondary_ability2",
    "ultimate_ability"
}
local unit_keybind_set = {
    "unit1",
    "unit2",
    "unit3",
    "unit4",
    "unit5",
    "unit6",
    "unit7",
    "unit8",
    "unit9",
    "unit10",
    "next_unit",
    "prev_unit"
}
local shop_keybind_set = {
    "open_shop",
    "quickbuy",
    "sticky_buy",
    "deliver_items",
    "select_courier"
}

function active_keybinds.enable_spell_keybinds()
    active_keybinds.enable_set(spell_keybind_set)
end

function active_keybinds.disable_spell_keybinds()
    active_keybinds.disable_set(spell_keybind_set)
end

function active_keybinds.enable_unit_keybinds()
    active_keybinds.enable_set(unit_keybind_set)
end
function active_keybinds.disable_unit_keybinds()
    active_keybinds.disable_set(unit_keybind_set)
end

function active_keybinds.enable_shop_keybinds()
    active_keybinds.enable_set(shop_keybind_set)
end 
function active_keybinds.disable_shop_keybinds()
    active_keybinds.disable_set(shop_keybind_set)
end 