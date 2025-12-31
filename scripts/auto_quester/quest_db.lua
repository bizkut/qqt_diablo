local quests = {
    ["Dusk on the Mountain"] = {
        name = "Dusk on the Mountain",
        steps = {
            {
                index = 1,
                description = "Find shelter in a nearby town (Nevesk).",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Placeholder
                range_threshold = 5.0
            },
            {
                index = 2,
                description = "Enter Nevesk.",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Placeholder
                range_threshold = 5.0
            },
            {
                index = 3,
                description = "Find the source of the voices (Shed).",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Placeholder
                range_threshold = 3.0
            },
            {
                index = 4,
                description = "Speak with Oswen/Vani (Interact with Door/NPC).",
                type = "Interact",
                target_name = "Oswen",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 5,
                description = "Follow Vani to the Tavern.",
                type = "Move",
                pos = vec3:new(0, 0, 0),
                range_threshold = 5.0
            },
            {
                index = 6,
                description = "Speak with Vani in the Tavern.",
                type = "Interact",
                target_name = "Vani",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            }
        }
    }
}

-- Attempt to load user recordings and overwrite/merge
local status, my_quests = pcall(require, "scripts.auto_quester.my_recorded_quests")
if status and my_quests then
    for k, v in pairs(my_quests) do
        quests[k] = v
    end
end

return quests
