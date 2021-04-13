import {ability_keybinds} from "./table.js"
import {cast_keybind} from "./util.js"

export function initialize_keybinds()
{
    for (const property in ability_keybinds)
    {
        Game.AddCommand( 
            "+"+ability_keybinds[property].command, 
            () => { 
                cast_keybind(property)
            }, 
            "",
            0
        )
        Game.CreateCustomKeyBind(ability_keybinds[property].keybind, "+"+ability_keybinds[property].command)
    }

    GameUI.SetMouseCallback( function( eventName, arg ) {
        var CONSUME_EVENT = true;
        var CONTINUE_PROCESSING_EVENT = false;
        if ( GameUI.GetClickBehaviors() !== CLICK_BEHAVIORS.DOTA_CLICK_BEHAVIOR_NONE )
            return CONTINUE_PROCESSING_EVENT;
    
        if ( eventName === "pressed" )
        {
            if ( arg === 0 )
            {
                cast_keybind("left_mouse")
                return CONSUME_EVENT;
            }
    
            if ( arg === 1 )
            {
                cast_keybind("right_mouse")
                return CONSUME_EVENT;
            }
    
        }
    
        return CONTINUE_PROCESSING_EVENT;
    } );
}

