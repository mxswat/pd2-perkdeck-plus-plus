-- This code works but after many feedback I decided to make it work in manual way
-- local VPPP_PlayerDamage_chk_cheat_death = PlayerDamage._chk_cheat_death
-- function PlayerDamage:_chk_cheat_death()
--     -- mx_print_table({
--     --     not managers.player:has_active_timer("replenish_grenades"),
--     --     managers.blackmarket:equipped_grenade() == "auto_inject_super_stimpak",
--     --     managers.blackmarket:equipped_grenade()
--     -- })
--     if not managers.player:has_active_timer("replenish_grenades") and managers.blackmarket:equipped_grenade() == "auto_inject_super_stimpak" then
--         self._auto_revive_timer = 1
--         managers.player:add_grenade_amount(-1)
--         return -- Return so it overrides the feight death skills and you don't waste it
--     end
--     VPPP_PlayerDamage_chk_cheat_death(self)
-- end