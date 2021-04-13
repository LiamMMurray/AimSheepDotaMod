require("target_cast.index")
item_cast_teleport_scroll_ability = class({})

function item_cast_teleport_scroll_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_teleport_scroll_ability")
end