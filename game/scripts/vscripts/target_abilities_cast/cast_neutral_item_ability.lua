require("target_cast.index")
item_cast_neutral_item_ability = class({})

function item_cast_neutral_item_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_neutral_item_ability")
end