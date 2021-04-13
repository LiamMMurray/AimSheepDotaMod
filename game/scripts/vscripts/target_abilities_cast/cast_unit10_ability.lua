require("target_cast.index")
cast_unit10_ability = class({})

function cast_unit10_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit10_ability")
end