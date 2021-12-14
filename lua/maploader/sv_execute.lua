HYPEX.MapLoader.Print = function(msg,val)
    val = val == 1 and "SUCCESS" || val == 2 and "FAIL" || val == 3 and "RUNNING" || "INFO"
    print("[HYPEX] [MapLoader] [" .. val .. "] " .. msg)
end
local print, config = HYPEX.MapLoader.Print, HYPEX.MapLoader.Config
hook.Add("Initialize", "HYPEX.MAPLOADER.Execute", function()
    print("Getting Current map...", 3)
    local curMap = game.GetMap()
    print("Map is reporting as " .. curMap)
    print("Executing MapLoader")
    return config[curMap] and resource.AddWorkshop(config[curMap]) and print("Added map for WorkshopDL.", 1) || print("Could not find map in config.", 2) 
end)

print("Loaded sv_execute.lua")