require("target_cast.index")
cast_unit3_ability = class({})

function cast_unit3_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit3_ability")
end