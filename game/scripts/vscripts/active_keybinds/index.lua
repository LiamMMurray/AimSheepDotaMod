require('active_keybinds.util')
require('active_keybinds.enable_all')
require('active_keybinds.disable_all')
require('active_keybinds.initialize')
require('active_keybinds.custom_sets')

if (active_keybinds == nil) then
    active_keybinds = class({})
end
if (active_keybinds.table == nil) then
    active_keybinds.table = {}
end

function active_keybinds.empty()
    return active_keybinds.size == 0
end

function active_keybinds.invalidate()
    i = 0
    for k in pairs(active_keybinds.table) do
        i = i+1
    end
    active_keybinds.size = i
end

function active_keybinds.get_random_keybind()
    if active_keybinds.empty() then
        return nil
    end

    index = math.random(active_keybinds.size)

    i = 1
    for k in pairs(active_keybinds.table) do
        if (index == i) then 
            return k
        end
        i = i+1
    end
    return nil
end

function active_keybinds.initialize_convars()
    Convars:RegisterCommand("aim_enable_all_keybinds", active_keybinds.enable_all, "", FCVAR_ARCHIVE)
    Convars:RegisterCommand("aim_disable_all_keybinds", active_keybinds.disable_all, "", FCVAR_ARCHIVE)
end
