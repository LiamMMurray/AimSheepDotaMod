if target_item1_ability == nil then 
	target_item1_ability = class({})
end

-- path in 2nd argument is relative to /game/dota_addons/{ModName}/scripts/vscripts/
LinkLuaModifier( "modifier_target_item1_ability", "target_abilities_modifier/target_item1_ability.lua", LUA_MODIFIER_MOTION_NONE )

function target_item1_ability:GetIntrinsicModifierName()
    return "modifier_target_item1_ability"
end

function target_item1_ability:GetBehavior ()
  return DOTA_ABILITY_BEHAVIOR_PASSIVE
end


-- Modifier --
if modifier_target_item1_ability == nil then 
	modifier_target_item1_ability = class({})
end

function modifier_target_item1_ability:IsHidden()
	return true
end

function modifier_target_item1_ability:IsPurgable()
  return false
end

function modifier_target_item1_ability:CheckState()
	local state = {
	[MODIFIER_STATE_NO_UNIT_COLLISION] = true,
	}

	return state
end

function modifier_target_item1_ability:GetStatusEffectName()
	return "particles/status_fx/status_effect_illusion_n90.vpcf" 
end

function modifier_target_item1_ability:DeclareFunctions()
	local funcs = {
	}

	return funcs
end


