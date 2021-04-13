require("target_cast.index")
cast_ultimate_ability_ability = class({})

function cast_ultimate_ability_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_ultimate_ability_ability")
end