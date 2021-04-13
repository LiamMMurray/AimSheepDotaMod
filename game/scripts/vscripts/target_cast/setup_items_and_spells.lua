if target_cast == nil then
	target_cast = class({})
end

function target_cast:setup_items_and_spells(hero)
	-- Items --
    -- ===== --

    -- remove the regular tp scroll heroes are spawned with --
	local teleport_scroll = hero:FindItemInInventory("item_tpscroll")
	if (teleport_scroll) then
		hero:RemoveItem(teleport_scroll)
    end

	-- teleport_scroll --
	GameRules:GetGameModeEntity():SetTPScrollSlotItemOverride("item_cast_teleport_scroll_ability")
	local teleport_scroll = CreateItem("item_cast_teleport_scroll_ability", hero, hero)
	hero:AddItem(teleport_scroll)

    -- item1 --
	local item1 = CreateItem("item_cast_item1_ability", hero, hero)
	hero:AddItem(item1)
    -- item2 --
	local item2 = CreateItem("item_cast_item2_ability", hero, hero)
	hero:AddItem(item2)
    -- item3 --
	local item3 = CreateItem("item_cast_item3_ability", hero, hero)
	hero:AddItem(item3)
    -- item4 --
	local item4 = CreateItem("item_cast_item4_ability", hero, hero)
	hero:AddItem(item4)
    -- item5 --
	local item5 = CreateItem("item_cast_item5_ability", hero, hero)
	hero:AddItem(item5)
    -- item6 --
	local item6 = CreateItem("item_cast_item6_ability", hero, hero)
	hero:AddItem(item6)
    -- neutral_item --
	local neutral_item = CreateItem("item_cast_neutral_item_ability", hero, hero)
	hero:AddItem(neutral_item)


    local ability_handle = nil	

	-- primary_ability1 --
	ability_handle = hero:GetAbilityByIndex(0)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_primary_ability1_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_primary_ability1_ability"))

	-- primary_ability2 --
	ability_handle = hero:GetAbilityByIndex(1)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_primary_ability2_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_primary_ability2_ability"))

	-- primary_ability3 --
	ability_handle = hero:GetAbilityByIndex(2)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_primary_ability3_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_primary_ability3_ability"))

	-- secondary_ability1 --
	ability_handle = hero:GetAbilityByIndex(3)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_secondary_ability1_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_secondary_ability1_ability"))

	-- secondary_ability2 --
	ability_handle = hero:GetAbilityByIndex(4)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_secondary_ability2_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_secondary_ability2_ability"))

	-- ultimate_ability --
	ability_handle = hero:GetAbilityByIndex(5)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_ultimate_ability_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_ultimate_ability_ability"))

	-- attack --
	ability_handle = hero:GetAbilityByIndex(6)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_attack_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_attack_ability"))

	-- move --
	ability_handle = hero:GetAbilityByIndex(7)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_move_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_move_ability"))

	-- stop --
	ability_handle = hero:GetAbilityByIndex(8)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_stop_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_stop_ability"))

	-- quickbuy --
	ability_handle = hero:GetAbilityByIndex(9)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_quickbuy_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_quickbuy_ability"))

	-- sticky_buy --
	ability_handle = hero:GetAbilityByIndex(10)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_sticky_buy_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_sticky_buy_ability"))

	-- open_shop --
	ability_handle = hero:GetAbilityByIndex(11)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_open_shop_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_open_shop_ability"))

	-- deliver_items --
	ability_handle = hero:GetAbilityByIndex(12)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_deliver_items_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_deliver_items_ability"))

	-- select_hero --
	ability_handle = hero:GetAbilityByIndex(13)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_select_hero_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_select_hero_ability"))

	-- select_courier --
	ability_handle = hero:GetAbilityByIndex(14)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_select_courier_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_select_courier_ability"))

	-- left_mouse --
	ability_handle = hero:GetAbilityByIndex(15)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_left_mouse_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_left_mouse_ability"))

	-- right_mouse --
	ability_handle = hero:GetAbilityByIndex(16)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_right_mouse_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_right_mouse_ability"))

	-- camera_grip --
	ability_handle = hero:GetAbilityByIndex(17)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_camera_grip_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_camera_grip_ability"))

	-- scoreboard --
	ability_handle = hero:GetAbilityByIndex(18)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_scoreboard_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_scoreboard_ability"))

	-- unit1 --
	ability_handle = hero:GetAbilityByIndex(19)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit1_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit1_ability"))

	-- unit2 --
	ability_handle = hero:GetAbilityByIndex(20)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit2_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit2_ability"))

	-- unit3 --
	ability_handle = hero:GetAbilityByIndex(21)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit3_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit3_ability"))

	-- unit4 --
	ability_handle = hero:GetAbilityByIndex(22)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit4_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit4_ability"))

	-- unit5 --
	ability_handle = hero:GetAbilityByIndex(23)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit5_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit5_ability"))

	-- unit6 --
	ability_handle = hero:GetAbilityByIndex(24)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit6_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit6_ability"))

	-- unit7 --
	ability_handle = hero:GetAbilityByIndex(25)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit7_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit7_ability"))

	-- unit8 --
	ability_handle = hero:GetAbilityByIndex(26)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit8_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit8_ability"))

	-- unit9 --
	ability_handle = hero:GetAbilityByIndex(27)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit9_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit9_ability"))

	-- unit10 --
	ability_handle = hero:GetAbilityByIndex(28)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_unit10_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_unit10_ability"))

	-- next_unit --
	ability_handle = hero:GetAbilityByIndex(29)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_next_unit_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_next_unit_ability"))

	-- prev_unit --
	ability_handle = hero:GetAbilityByIndex(30)
	if ability_handle ~= nil then
		hero:RemoveAbility(ability_handle:GetAbilityName())
	end
	hero:AddAbility("cast_prev_unit_ability")
	hero:UpgradeAbility(hero:FindAbilityByName("cast_prev_unit_ability"))

end