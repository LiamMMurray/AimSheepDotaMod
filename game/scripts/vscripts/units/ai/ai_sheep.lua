require('keybinds')
require('active_keybinds.index')
require('spawner.index')

function Spawn( entityKeyValues )
	random_keybind = active_keybinds.get_random_keybind()

	thisEntity:AddAbility(keybinds[random_keybind]["modifier"])

	thisEntity.aim_info_hud_particle  = ParticleManager:CreateParticle(keybinds[random_keybind]["particle"], PATTACH_OVERHEAD_FOLLOW, thisEntity)
	thisEntity.keybind = random_keybind
	ParticleManager:SetParticleControl( thisEntity.aim_info_hud_particle, 1, keybinds[random_keybind]["sequence_offset"])
	ParticleManager:SetParticleControl( thisEntity.aim_info_hud_particle, 2, keybinds[random_keybind]["color"])

	target_pos = (
		spawner.center + 
		Vector(
			RandomFloat(-spawner:width(),spawner:width()),
			RandomFloat(-spawner:height(),spawner:height()),
			0
		)
	)

	ExecuteOrderFromTable({
		UnitIndex = thisEntity:entindex(), 
		OrderType = DOTA_UNIT_ORDER_MOVE_TO_POSITION,
		Position = target_pos, --Optional.  Only used when targeting the ground
		Queue = true
	})
end

--------------------------------------------------------------------------------

function target_think()
	return 1.0/30.0
end