require("target_cast.index")
item_cast_item4_ability = class({})

function item_cast_item4_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_item4_ability")
end