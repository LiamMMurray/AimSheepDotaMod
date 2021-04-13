if (active_keybinds == nil) then
    active_keybinds = class({})
end
if (active_keybinds.table == nil) then
    active_keybinds.table = {}
end

function active_keybinds.enable(keybind)
    if active_keybinds.table[keybind] == nil or active_keybinds.table[keybind] == false then
        active_keybinds.table[keybind] = true
        Convars:SetBool("aim_"..keybind.."_active", true)
        active_keybinds.size = active_keybinds.size + 1
    end
end

function active_keybinds.disable(keybind)
    if (active_keybinds.table[keybind] == true) then 
        active_keybinds.table[keybind] = nil
        Convars:SetBool("aim_"..keybind.."_active", false)
        active_keybinds.size = active_keybinds.size - 1
    end
end

function active_keybinds.enable_set(set)
    for i,v in ipairs(set) do
        active_keybinds.enable(v)
    end
end

function active_keybinds.disable_set(set)
    for i,v in ipairs(set) do
        active_keybinds.disable(v)
    end
end

function active_keybinds.set_active(keybind, set_active)
    if set_active then
        active_keybinds.enable(keybind)
    else
        active_keybinds.disable(keybind)
    end
end