require("target_cast.index")
cast_unit6_ability = class({})

function cast_unit6_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit6_ability")
end