require('target_cast.setup_items_and_spells')

if target_cast == nil then
	target_cast = class({})
end

function target_cast:on_cast_ability(context, modifier_name)
	local caster = context:GetCaster()
	local target = context:GetCursorTarget()
	
	if target == nil then
		-- missed
		return
	end

	if (caster == target) then
		-- self-cast
		return
	end


	if (target:HasModifier(modifier_name)) then
		-- target-hit
		-- SendOverheadEventMessage( target, OVERHEAD_ALERT_MANA_ADD , target, 1, nil )
		target:ForceKill(true)
	end
end