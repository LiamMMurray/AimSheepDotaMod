require("target_cast.index")
cast_primary_ability2_ability = class({})

function cast_primary_ability2_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_primary_ability2_ability")
end