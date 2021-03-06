require ('convars.util')

if convars == nil then
    convars = class({})
end

function convars:initialize()

	convars:convar_init_bool("aim_primary_ability1_active", "true")
	convars:convar_init_bool("aim_primary_ability2_active", "true")
	convars:convar_init_bool("aim_primary_ability3_active", "true")
	convars:convar_init_bool("aim_secondary_ability1_active", "true")
	convars:convar_init_bool("aim_secondary_ability2_active", "true")
	convars:convar_init_bool("aim_ultimate_ability_active", "true")
	convars:convar_init_bool("aim_item1_active", "true")
	convars:convar_init_bool("aim_item2_active", "true")
	convars:convar_init_bool("aim_item3_active", "true")
	convars:convar_init_bool("aim_item4_active", "true")
	convars:convar_init_bool("aim_item5_active", "true")
	convars:convar_init_bool("aim_item6_active", "true")
	convars:convar_init_bool("aim_neutral_item_active", "true")
	convars:convar_init_bool("aim_teleport_scroll_active", "true")
	convars:convar_init_bool("aim_attack_active", "true")
	convars:convar_init_bool("aim_move_active", "true")
	convars:convar_init_bool("aim_stop_active", "true")
	convars:convar_init_bool("aim_quickbuy_active", "true")
	convars:convar_init_bool("aim_sticky_buy_active", "true")
	convars:convar_init_bool("aim_open_shop_active", "true")
	convars:convar_init_bool("aim_deliver_items_active", "true")
	convars:convar_init_bool("aim_select_hero_active", "true")
	convars:convar_init_bool("aim_select_courier_active", "true")
	convars:convar_init_bool("aim_left_mouse_active", "true")
	convars:convar_init_bool("aim_right_mouse_active", "true")
	convars:convar_init_bool("aim_camera_grip_active", "true")
	convars:convar_init_bool("aim_scoreboard_active", "true")
	convars:convar_init_bool("aim_unit1_active", "true")
	convars:convar_init_bool("aim_unit2_active", "true")
	convars:convar_init_bool("aim_unit3_active", "true")
	convars:convar_init_bool("aim_unit4_active", "true")
	convars:convar_init_bool("aim_unit5_active", "true")
	convars:convar_init_bool("aim_unit6_active", "true")
	convars:convar_init_bool("aim_unit7_active", "true")
	convars:convar_init_bool("aim_unit8_active", "true")
	convars:convar_init_bool("aim_unit9_active", "true")
	convars:convar_init_bool("aim_unit10_active", "true")
	convars:convar_init_bool("aim_next_unit_active", "true")
	convars:convar_init_bool("aim_prev_unit_active", "true")

end