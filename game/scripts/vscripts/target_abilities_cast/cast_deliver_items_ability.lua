require("target_cast.index")
cast_deliver_items_ability = class({})

function cast_deliver_items_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_deliver_items_ability")
end