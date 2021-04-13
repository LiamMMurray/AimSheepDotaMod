require('keybinds')
require('active_keybinds.index')

if spawner == nil then
	spawner = class({})
end

function spawner:interval()
	return Convars:GetFloat("aim_spawn_interval")
end

function spawner:width()
	return Convars:GetFloat("aim_spawn_width")
end

function spawner:height()
	return Convars:GetFloat("aim_spawn_height")
end

function spawner:on_target_blur(event_data)
	target = EntIndexToHScript(event_data.entity_index)
	ParticleManager:SetParticleControl( target.aim_info_hud_particle, 2, keybinds[target.keybind]["color"])
end


function spawner:on_target_focus(event_data)
	target = EntIndexToHScript(event_data.entity_index)
	ParticleManager:SetParticleControl( target.aim_info_hud_particle, 2, Vector(1,0,0))
end


function spawner:initialize()

	spawner.time_stamp_next = 0
	spawner.center =  Entities:FindByName(nil, "local_map_center"):GetCenter()
	spawner.paused = false
	spawner.stop = false
	spawner.stop_cycle_finished = false

	ListenToGameEvent("entity_killed", Dynamic_Wrap( spawner, "on_entity_killed" ), self )
	CustomGameEventManager:RegisterListener("on_target_blur", spawner.on_target_blur)
	CustomGameEventManager:RegisterListener("on_target_focus", spawner.on_target_focus)
	return nil
end

function spawner:spawn()
	if active_keybinds.empty() == false then 
		unit = CreateUnitByName(
			"sheep",
			(
				spawner.center + Vector(
					RandomFloat(-spawner:width(),spawner:width()),
					RandomFloat(-spawner:height(),spawner:height()),
					0
				)
			),
			false,
			nil,
			nil,
			DOTA_TEAM_NOTEAM 
		)  
	end
end

function spawner:reset()
	spawner.stop_cycle_finished = false
	spawner.stop = false
	spawner.paused = false
	spawner.time_stamp_next = GameRules:GetGameTime() + spawner:interval()
	GameRules:GetGameModeEntity():SetContextThink( "spawner:think", function() return spawner:think() end, 0 )
end

function spawner:pause()
	spawner.paused = true
end

function spawner:unpause()
	spawner.paused = false
end

function spawner:stop()
end

function spawner:think()
	if not spawner.paused then
		if GameRules:GetGameTime() > spawner.time_stamp_next then
			spawner:spawn()
			spawner.time_stamp_next =  GameRules:GetGameTime() + spawner:interval() - GameRules:GetGameTime() + spawner.time_stamp_next
		end
	end
	if spawner.stop then
		spawner.stop_cycle_finished = true
		return nil
	end
	return 0
end

function spawner:on_entity_killed(event)
	killed_unit = EntIndexToHScript( event.entindex_killed )
	ParticleManager:DestroyParticle(killed_unit.aim_info_hud_particle, false)
end