import {ability_keybinds} from "./table.js"
import {get_mouse_cast_target} from "./targeting"
import {get_mouse_cast_position} from "./targeting"

export function cast_keybind(keybind)
{
    $.Msg("casting: ", keybind)
	var order = {
		AbilityIndex : Entities.GetAbility( Players.GetPlayerHeroEntityIndex( Players.GetLocalPlayer() ), ability_keybinds[keybind].ability_index),
		QueueBehavior : OrderQueueBehavior_t.DOTA_ORDER_QUEUE_NEVER,
		ShowEffects : false,
		OrderType : dotaunitorder_t.DOTA_UNIT_ORDER_CAST_NO_TARGET
    };
    
    var abilityBehavior = Abilities.GetBehavior( order.AbilityIndex );
    var target_entity_index = get_mouse_cast_target();

	if ( abilityBehavior & DOTA_ABILITY_BEHAVIOR.DOTA_ABILITY_BEHAVIOR_POINT )
	{
        order.OrderType = dotaunitorder_t.DOTA_UNIT_ORDER_CAST_POSITION;
		order.Position = get_mouse_cast_position();
    }
    if ( ( abilityBehavior & DOTA_ABILITY_BEHAVIOR.DOTA_ABILITY_BEHAVIOR_UNIT_TARGET ) && ( target_entity_index !== -1 ) )
    {
        order.OrderType = dotaunitorder_t.DOTA_UNIT_ORDER_CAST_TARGET;
        order.TargetIndex = target_entity_index;
    }
	Game.PrepareUnitOrders( order );
}

