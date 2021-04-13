require("target_cast.index")
cast_unit1_ability = class({})

function cast_unit1_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit1_ability")
end