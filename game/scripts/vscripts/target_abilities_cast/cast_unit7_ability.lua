require("target_cast.index")
cast_unit7_ability = class({})

function cast_unit7_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit7_ability")
end