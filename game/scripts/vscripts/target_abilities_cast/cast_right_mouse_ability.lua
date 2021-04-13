require("target_cast.index")
cast_right_mouse_ability = class({})

function cast_right_mouse_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_right_mouse_ability")
end