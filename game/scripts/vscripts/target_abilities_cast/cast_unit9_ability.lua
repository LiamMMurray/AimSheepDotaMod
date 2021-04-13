require("target_cast.index")
cast_unit9_ability = class({})

function cast_unit9_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_unit9_ability")
end