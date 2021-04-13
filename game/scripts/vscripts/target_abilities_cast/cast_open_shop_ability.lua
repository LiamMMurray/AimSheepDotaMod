require("target_cast.index")
cast_open_shop_ability = class({})

function cast_open_shop_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_open_shop_ability")
end