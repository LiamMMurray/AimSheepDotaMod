require("target_cast.index")
cast_prev_unit_ability = class({})

function cast_prev_unit_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_prev_unit_ability")
end