Hooks:PostHook(CharacterTweakData, "init", "init_jokermon", function (self)
    for k, v in pairs(self) do
        if type(v) == "table" and v.HEALTH_INIT and v.weapon then
            v.ORIGINAL_HEALTH_INIT = v.HEALTH_INIT
        end
    end
end)