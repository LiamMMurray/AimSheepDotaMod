if target_teleport_scroll_ability == nil then 
	target_teleport_scroll_ability = class({})
end

-- path in 2nd argument is relative to /game/dota_addons/{ModName}/scripts/vscripts/
LinkLuaModifier( "modifier_target_teleport_scroll_ability", "target_abilities_modifier/target_teleport_scroll_ability.lua", LUA_MODIFIER_MOTION_NONE )

function target_teleport_scroll_ability:GetIntrinsicModifierName()
    return "modifier_target_teleport_scroll_ability"
end

function target_teleport_scroll_ability:GetBehavior ()
  return DOTA_ABILITY_BEHAVIOR_PASSIVE
end


-- Modifier --
if modifier_target_teleport_scroll_ability == nil then 
	modifier_target_teleport_scroll_ability = class({})
end

function modifier_target_teleport_scroll_ability:IsHidden()
	return true
end

function modifier_target_teleport_scroll_ability:IsPurgable()
  return false
end

function modifier_target_teleport_scroll_ability:CheckState()
	local state = {
	[MODIFIER_STATE_NO_UNIT_COLLISION] = true,
	}

	return state
end

function modifier_target_teleport_scroll_ability:GetStatusEffectName()
	return "particles/status_fx/status_effect_illusion_n90.vpcf" 
end

function modifier_target_teleport_scroll_ability:DeclareFunctions()
	local funcs = {
	}

	return funcs
end


