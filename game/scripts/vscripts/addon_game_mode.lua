require('target_cast.index')
require('spawner.index')
require('active_keybinds.index')
require('convars.index')

if game_mode == nil then
	game_mode = class({})
end

function Precache( context )
	PrecacheResource( "particle", "particles/aim_info_hud_00.vpcf", context )
	PrecacheResource( "particle", "particles/aim_info_hud_01.vpcf", context )
end

function Activate()
	GameRules:SetPreGameTime(0)
	GameRules.game_mode = game_mode()
	GameRules.game_mode:init_game_mode()
end


function game_mode:on_game_entered()
	GameRules:GetGameModeEntity():SetContextThink(
		"spawner:initialize",
		function()
			spawner:initialize() 
			spawner:reset()
		end,
		0.04
	)
end

function game_mode:on_hero_first_spawned_delayed(hero)
	target_cast:setup_items_and_spells(hero)
end

function game_mode:on_hero_first_spawned(hero)
	GameRules:GetGameModeEntity():SetContextThink( 
		"game_mode:on_hero_first_spawned_delayed",
		function()
			game_mode:on_hero_first_spawned_delayed(hero) 
		end,
		0.04
	)
end

function game_mode:npc_spawned_game_event(entity_index)
	CustomGameEventManager:Send_ServerToAllClients("target_spawned", { entity_index = entity_index })
end

function game_mode:on_npc_spawned(keys)
	local h_npc = EntIndexToHScript(keys.entindex)

	if h_npc:IsRealHero() and self.player_has_spawned == nil then 
		self.player_has_spawned = true
		game_mode:on_game_entered()
	end
	
	if h_npc:IsRealHero() and h_npc.b_first_spawned == nil then
		h_npc.b_first_spawned = true
		game_mode:on_hero_first_spawned(h_npc)
	end

	if not h_npc:IsRealHero() then
		game_mode:npc_spawned_game_event(keys.entindex)
	end
end

function game_mode:convar_init_float(convar, default_value)
	value = Convars:GetFloat(convar)
	if value == nil then
		Convars:RegisterConvar(convar, default_value, "", FCVAR_ARCHIVE)
		value = default_value
	end
	return value
end

function game_mode:convar_init_bool(convar, default_value)
	value = Convars:GetBool(convar)
	if value == nil then
		Convars:RegisterConvar(convar, default_value, "", FCVAR_ARCHIVE)
		value = default_value
	end
	return value
end

function game_mode:init_convars()
	game_mode:convar_init_float("aim_spawn_interval", "2")
	game_mode:convar_init_float("aim_spawn_width", "300")
	game_mode:convar_init_float("aim_spawn_height", "400")

	convars:initialize()

	active_keybinds:initialize_convars()
	active_keybinds:initialize_custom_set_commands()
	active_keybinds:initialize_enable_keybind_commands()
	active_keybinds:initialize_disable_keybind_commands()
end

function game_mode:init_game_mode()
	GameRules:GetGameModeEntity():SetFogOfWarDisabled(true)

	ListenToGameEvent('npc_spawned', Dynamic_Wrap(game_mode, 'on_npc_spawned'), self)
	game_mode:init_convars()
	active_keybinds.initialize()
end