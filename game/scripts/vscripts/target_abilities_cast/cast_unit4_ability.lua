require("target_cast.index")
cast_unit4_ability = class({})

function cast_unit4_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit4_ability")
end