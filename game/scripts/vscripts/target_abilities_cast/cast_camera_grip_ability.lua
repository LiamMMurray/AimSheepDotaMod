require("target_cast.index")
cast_camera_grip_ability = class({})

function cast_camera_grip_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_camera_grip_ability")
end