require("target_cast.index")
cast_unit5_ability = class({})

function cast_unit5_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit5_ability")
end