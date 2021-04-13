require("target_cast.index")
cast_next_unit_ability = class({})

function cast_next_unit_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_next_unit_ability")
end