require("target_cast.index")
cast_left_mouse_ability = class({})

function cast_left_mouse_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_left_mouse_ability")
end