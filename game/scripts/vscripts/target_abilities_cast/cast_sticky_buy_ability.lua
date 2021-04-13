require("target_cast.index")
cast_sticky_buy_ability = class({})

function cast_sticky_buy_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_sticky_buy_ability")
end