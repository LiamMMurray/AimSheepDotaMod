if target_right_mouse_ability == nil then 
	target_right_mouse_ability = class({})
end

-- path in 2nd argument is relative to /game/dota_addons/{ModName}/scripts/vscripts/
LinkLuaModifier( "modifier_target_right_mouse_ability", "target_abilities_modifier/target_right_mouse_ability.lua", LUA_MODIFIER_MOTION_NONE )

function target_right_mouse_ability:GetIntrinsicModifierName()
    return "modifier_target_right_mouse_ability"
end

function target_right_mouse_ability:GetBehavior ()
  return DOTA_ABILITY_BEHAVIOR_PASSIVE
end


-- Modifier --
if modifier_target_right_mouse_ability == nil then 
	modifier_target_right_mouse_ability = class({})
end

function modifier_target_right_mouse_ability:IsHidden()
	return true
end

function modifier_target_right_mouse_ability:IsPurgable()
  return false
end

function modifier_target_right_mouse_ability:CheckState()
	local state = {
	[MODIFIER_STATE_NO_UNIT_COLLISION] = true,
	}

	return state
end

function modifier_target_right_mouse_ability:GetStatusEffectName()
	return "particles/status_fx/status_effect_illusion_n90.vpcf" 
end

function modifier_target_right_mouse_ability:DeclareFunctions()
	local funcs = {
	}

	return funcs
end


