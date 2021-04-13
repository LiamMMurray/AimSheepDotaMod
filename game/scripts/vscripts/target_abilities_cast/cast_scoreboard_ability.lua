require("target_cast.index")
cast_scoreboard_ability = class({})

function cast_scoreboard_ability:OnSpellStart()
    target_cast:on_cast_ability(self, "modifier_target_scoreboard_ability")
end