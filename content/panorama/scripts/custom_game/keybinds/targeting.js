export function get_mouse_cast_position()
{
    return GameUI.GetScreenWorldPosition( GameUI.GetCursorPosition() )
}

export function get_mouse_cast_target()
{
	var mouseEntities = GameUI.FindScreenEntities( GameUI.GetCursorPosition() );
	var localHeroIndex = Players.GetPlayerHeroEntityIndex( Players.GetLocalPlayer() );
	mouseEntities = mouseEntities.filter( function(entity) { return entity.entityIndex !== localHeroIndex; } );
	
	for ( var entity of mouseEntities )
	{
		if ( !entity.accurateCollision )
			continue;
		return entity.entityIndex;
	}

	for ( var entity of mouseEntities )
	{
		return entity.entityIndex;
	}

	return -1;
}

export function on_target_focus(entity_index)
{
	GameEvents.SendCustomGameEventToServer( "on_target_focus", {"entity_index":entity_index} )
}

export function on_target_blur(entity_index)
{
	GameEvents.SendCustomGameEventToServer( "on_target_blur", {"entity_index":entity_index} )
}

let old_mouse_target = -1
export function on_think()
{
	let new_mouse_target = get_mouse_cast_target()
	if (old_mouse_target != new_mouse_target)
	{
		if (old_mouse_target != -1)
			on_target_blur(old_mouse_target)

		if (new_mouse_target != -1)
			on_target_focus(new_mouse_target)
	}
		
	old_mouse_target = new_mouse_target

	$.Schedule( 0.1, on_think )
}

export function initialize_targeting_think()
{
	$.Schedule( 0.0, on_think )
}