require("target_cast.index")
cast_unit8_ability = class({})

function cast_unit8_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit8_ability")
end