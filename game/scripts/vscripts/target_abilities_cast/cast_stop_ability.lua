require("target_cast.index")
cast_stop_ability = class({})

function cast_stop_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_stop_ability")
end