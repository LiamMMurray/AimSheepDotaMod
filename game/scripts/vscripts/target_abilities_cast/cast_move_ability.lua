require("target_cast.index")
cast_move_ability = class({})

function cast_move_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_move_ability")
end