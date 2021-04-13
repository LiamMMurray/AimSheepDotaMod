import {initialize_keybinds} from "./initialize.js"
import {initialize_targeting_think} from "./targeting.js"
export {initialize_keybinds, initialize_targeting_think}

var ability_keybinds_map = new Map()

function on_target_spawned(event_data)
{
	var entity_index = event_data["entity_index"]
	var origin = Entities.GetAbsOrigin(entity_index);
	var hpOffset = Entities.GetHealthBarOffset(entity_index);
	var wx = Game.WorldToScreenX(origin[0], origin[1], origin[2]+hpOffset);
	var wy = Game.WorldToScreenY(origin[0], origin[1], origin[2]+hpOffset);
	var check = Game.ScreenXYToWorld(wx, wy);

	var root = $.GetContextPanel().GetParent().GetParent().GetParent();
	var test = root.FindChildrenWithClassTraverse("HeroHealthBar")
	var test2 = root.FindChildrenWithClassTraverse("HealthBar")
	var test3 = root.FindChildTraverse("HPBarContainer")
}



