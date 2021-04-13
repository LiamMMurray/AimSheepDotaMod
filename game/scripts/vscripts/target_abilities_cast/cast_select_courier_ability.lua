require("target_cast.index")
cast_select_courier_ability = class({})

function cast_select_courier_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_select_courier_ability")
end