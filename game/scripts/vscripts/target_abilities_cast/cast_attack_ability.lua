require("target_cast.index")
cast_attack_ability = class({})

function cast_attack_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_attack_ability")
end