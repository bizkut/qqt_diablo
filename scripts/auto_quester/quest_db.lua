local quests = {
    ["Dusk on the Mountain"] = {
        name = "Dusk on the Mountain",
        steps = {
            {
                index = 1,
                description = "Find Shelter in a nearby town.",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Placeholder: Nevesk Entrance
                range_threshold = 5.0
            },
            {
                index = 2,
                description = "Enter Nevesk.",
                type = "Move",
                pos = vec3:new(0, 0, 0),
                range_threshold = 5.0
            },
            {
                index = 3,
                description = "Find the source of the voices.",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Near Shed
                range_threshold = 3.0
            },
            {
                index = 4,
                description = "Speak with Oswen (or Vani).",
                type = "Interact",
                target_name = "Oswen", -- Often near shed or house
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
    },
    ["Darkness Within"] = {
        name = "Darkness Within",
        steps = {
            {
                index = 1,
                description = "Enter Icehowl Ruins.",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Entrance to dungeon
                range_threshold = 5.0
            },
            {
                index = 2,
                description = "Interact with Entrance/Zone.",
                type = "Interact",
                target_name = "Icehowl Ruins", -- Zone transition object
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 3,
                description = "Search the depths (Move deeper).",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Deep inside dungeon
                range_threshold = 10.0
            },
            {
                index = 4,
                description = "Slay X'Fal (Boss Trigger - Decapitated Priest).",
                type = "Interact",
                target_name = "Decapitated Priest",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            -- Combat handled by rotation, bot just waits/survives?
            -- Or we assume user fights. Auto-Runner handles movement/interaction.
        }
    },
    ["A Hero's Return"] = {
        name = "A Hero's Return",
        steps = {
            {
                index = 1,
                description = "Return to Nevesk.",
                type = "Move",
                pos = vec3:new(0, 0, 0),
                range_threshold = 10.0
            },
            {
                index = 2,
                description = "Speak with Vani in the Tavern.",
                type = "Interact",
                target_name = "Vani",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            }
        }
    },
    ["A Hero's Reward"] = {
        name = "A Hero's Reward",
        steps = {
            {
                index = 1,
                description = "Loot the Chapel Key from Vani's corpse.",
                type = "Interact",
                target_name = "Vani", -- Or "Vani's Corpse"
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 2,
                description = "Report to Iosef.",
                type = "Interact",
                target_name = "Iosef",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            }
        }
    },
    ["Prayers for Salvation"] = {
        name = "Prayers for Salvation",
        steps = {
            {
                index = 1,
                description = "Unlock the Chapel Door.",
                type = "Interact",
                target_name = "Chapel Door",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 2,
                description = "Examine Blood Petals.",
                type = "Interact",
                target_name = "Blood Petals",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 3,
                description = "Speak with Iosef.",
                type = "Interact",
                target_name = "Iosef",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            }
        }
    },
    ["In Search of Answers"] = {
        name = "In Search of Answers",
        steps = {
            {
                index = 1,
                description = "Find the hermit's cabin.",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Cabin location
                range_threshold = 5.0
            },
            {
                index = 2,
                description = "Enter the cabin.",
                type = "Interact",
                target_name = "Cabin Door", -- Guessing name
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 3,
                description = "Examine Strange Skull (Secret Room).",
                type = "Interact",
                target_name = "Strange Skull",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 4,
                description = "Speak with Lorath.",
                type = "Interact",
                target_name = "Lorath",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            }
        }
    },
    ["Rite of Passage"] = {
        name = "Rite of Passage",
        steps = {
            {
                index = 1,
                description = "Accompany Lorath to Kyovashad.",
                type = "Move",
                pos = vec3:new(0, 0, 0), -- Kyovashad Gate
                range_threshold = 10.0
            },
            {
                index = 2,
                description = "Speak with Lorath at the gate.",
                type = "Interact",
                target_name = "Lorath",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 3,
                description = "Pick up Holy Cedar Tablets.",
                type = "Interact",
                target_name = "Holy Cedar Tablet",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 4,
                description = "Burn your sin (Brazier).",
                type = "Interact",
                target_name = "Brazier", -- Or "Ritual Brazier"
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 5,
                description = "Speak with the Guard.",
                type = "Interact",
                target_name = "Guard", -- Specific name might be needed like "Guard Boza"
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            }
        }
    },
    ["Missing Pieces"] = {
        name = "Missing Pieces",
        steps = {
            {
                index = 1,
                description = "Meet Lorath in Kyovashad.",
                type = "Move",
                pos = vec3:new(0, 0, 0),
                range_threshold = 5.0
            },
            {
                index = 2,
                description = "Speak with Lorath.",
                type = "Interact",
                target_name = "Lorath",
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 3,
                description = "Speak with the Merchant (Buy Polearm).",
                type = "Interact",
                target_name = "Merchant", -- Name usually "Weaponsmith" or specific
                pos = vec3:new(0, 0, 0),
                range_threshold = 3.0
            },
            {
                index = 4,
                description = "Return to Lorath.",
                type = "Interact",
                target_name = "Lorath",
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
