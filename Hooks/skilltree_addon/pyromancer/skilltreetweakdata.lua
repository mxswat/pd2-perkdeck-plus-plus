local skilltree_name = "mx_pack"

Hooks:Add("SF_InfamyTweakDataPostInit", "Pyromancer_InfamyTweakDataPostInit_Hawkeye", function(infamy)
    infamy:add_skill_tree(skilltree_name)
end)

Hooks:PostHook(SkillTreeTweakData, "init", "Pyromancer_SkillTreeTweakData_init", function(self)
    self:add_skill_tree(skilltree_name)

	local demolitionistTreeTiers = {
		{
			"fuel_backpack",
		},
		{
			"extender",
			"flaming_hands"
		},
		{
			"hard_skin",
			"cleansing_fire"
		},
		{
			"primer_round"
		}
	}

	self:add_sub_skill_tree(skilltree_name, "mx_demolitionist", demolitionistTreeTiers)

	self:add_new_skill("fuel_backpack", "flamethrower_magazine_capacity_inc_1", "flamethrower_magazine_capacity_inc_2", 2, { 6,0 }) -- 50% mag size | 100% mag size

	self:add_new_skill("extender", "flamethrower_flame_max_range_1", "flamethrower_flame_max_range_2", 2, { 6,6 }) -- range 16m - 21m
	self:add_new_skill("flaming_hands", "flamethrower_reload_speed_multiplier_1", "flamethrower_reload_speed_multiplier_2", 2, { 1,9 }) -- reload 45% | 75%

	local cleansing_fire_1 = {"flamethrower_damage_addend_1", "flamethrower_fire_rate_multiplier_1"}
	local cleansing_fire_2 = {"flamethrower_damage_addend_2", "flamethrower_fire_rate_multiplier_2"}
	self:add_new_skill("cleansing_fire", cleansing_fire_1 , cleansing_fire_2, 3, { 9,10 }) -- +50 |	+70 

	self:add_new_skill("hard_skin", "XXX", "XXX", 3, { 1,7 })
	
	self:add_new_skill("primer_round", "XXX", "XXX", 4, { 0,0 })
end)