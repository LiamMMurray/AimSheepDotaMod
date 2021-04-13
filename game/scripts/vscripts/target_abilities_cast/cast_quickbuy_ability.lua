require("target_cast.index")
cast_quickbuy_ability = class({})

function cast_quickbuy_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_quickbuy_ability")
end