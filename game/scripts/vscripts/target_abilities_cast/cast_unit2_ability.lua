require("target_cast.index")
cast_unit2_ability = class({})

function cast_unit2_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit2_ability")
end