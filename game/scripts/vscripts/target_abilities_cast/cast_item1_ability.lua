require("target_cast.index")
item_cast_item1_ability = class({})

function item_cast_item1_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_item1_ability")
end