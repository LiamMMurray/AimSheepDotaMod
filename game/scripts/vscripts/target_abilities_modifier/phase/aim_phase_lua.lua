if aim_phase_lua == nil then 
	aim_phase_lua = class({})
end
-- im assuming the path in 2nd argument is relative to /game/dota_addons/{ModName}/scripts/vscripts/
LinkLuaModifier( "modifier_aim_phase_lua", "aim_phase_lua.lua", LUA_MODIFIER_MOTION_NONE )

function aim_phase_lua:GetIntrinsicModifierName()
    return "modifier_aim_phase_lua"
end

function aim_phase_lua:GetBehavior ()
  return DOTA_ABILITY_BEHAVIOR_PASSIVE
end

if modifier_aim_phase_lua == nil then 
	modifier_aim_phase_lua = class({})
end

function modifier_aim_phase_lua:IsHidden()
	return true
end

function modifier_aim_phase_lua:IsPurgable()
  return false
end

function modifier_aim_phase_lua:CheckState()
	local state = {
	[MODIFIER_STATE_NO_UNIT_COLLISION] = true,
	}

	return state
end

function modifier_aim_phase_lua:GetStatusEffectName()
	-- return "particles/status_fx/status_effect_illusion.vpcf" -- blue
	-- return "particles/status_fx/status_effect_ghost.vpcf" -- white
	-- return "particles/status_fx/status_effect_dark_willow_shadow_realm.vpcf" -- black
	-- return "particles/status_fx/status_effect_keeper_spirit_form.vpcf" -- pastel peach
	-- return "particles/status_fx/status_effect_lone_druid_savage_roar.vpcf" -- pastel aquamarine
	-- return "particles/status_fx/status_effect_abaddon_borrowed_time.vpcf" -- teal and dark teal
	-- return "particles/status_fx/status_effect_abaddon_frostmourne.vpcf" -- teal and dark teal
	-- return "particles/status_fx/status_effect_abaddon_borrowed_time.vpcf" -- teal and light grey
	-- return "particles/status_fx/status_effect_gods_strength.vpcf" -- subtle red
	-- return "particles/status_fx/status_effect_burn.vpcf" -- glistening ember red steel 
	-- return "particles/status_fx/status_effect_dark_seer_illusion.vpcf" -- intense specular black
	-- return "particles/status_fx/status_effect_ancestral_spirit.vpcf" -- blue illusion
	-- return "particles/status_fx/status_effect_maledict.vpcf" -- subtle pastel lavender
	-- return "particles/status_fx/status_effect_nullifier.vpcf" -- glistening ember violet steel
	-- return "particles/status_fx/status_effect_phantom_lancer_illstrong.vpcf" -- bright gold and orange shadows
	-- return "particles/status_fx/status_effect_terrorblade_reflection.vpcf" -- specular teal metalic (dark serr illusion)
	-- return "particles/status_fx/status_effect_wraithking_ghosts.vpcf" -- pale green
	-- return "particles/status_fx/status_effect_phantom_lancer_illstrong.vpcf" -- bright gold and orange shadows

	-- return "particles/status_fx/status_effect_illusion_green.vpcf" --
	-- return "particles/status_fx/status_effect_illusion_gold.vpcf" --
	return "particles/status_fx/status_effect_illusion_p180.vpcf" 



end

-- function modifier_aim_phase_lua:GetEffectName()
-- 	return "particles/generic_gameplay/generic_stunned.vpcf"
-- end

function modifier_aim_phase_lua:GetEffectAttachType()
	return PATTACH_OVERHEAD_FOLLOW
end

function modifier_aim_phase_lua:OnDeath(args)
	-- if args.unit == self:GetParent() then
	-- 	self:Destroy()
	-- end
end

function modifier_aim_phase_lua:DeclareFunctions()
	local funcs = {
			MODIFIER_EVENT_ON_DEATH,
	}
	

	return funcs
end


