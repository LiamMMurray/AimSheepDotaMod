require("target_cast.index")
cast_secondary_ability2_ability = class({})

function cast_secondary_ability2_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_secondary_ability2_ability")
end