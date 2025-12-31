local quests = {
    -- PROLOGUE: Wandering
    ["Dusk on the Mountain"] = {
        name = "Dusk on the Mountain",
        steps = {
            { index = 1, description = "Find Shelter in a nearby town.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Enter Nevesk.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 3, description = "Find the source of the voices.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Oswen.", type = "Interact", target_name = "Oswen", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Follow Vani to the Tavern.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 6, description = "Speak with Vani in the Tavern.", type = "Interact", target_name = "Vani", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Darkness Within"] = {
        name = "Darkness Within",
        steps = {
            { index = 1, description = "Enter Icehowl Ruins.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Interact with Entrance.", type = "Interact", target_name = "Icehowl Ruins", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Search the depths for answers.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 4, description = "Slay X'Fal.", type = "Interact", target_name = "Decapitated Priest", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }, -- Trigger boss
        }
    },
    ["A Hero's Return"] = {
        name = "A Hero's Return",
        steps = {
            { index = 1, description = "Return to Nevesk.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Vani.", type = "Interact", target_name = "Vani", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["A Hero's Reward"] = {
        name = "A Hero's Reward",
        steps = {
            { index = 1, description = "Take the Chapel Key.", type = "Interact", target_name = "Vani", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Report to Iosef.", type = "Interact", target_name = "Iosef", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Prayers for Salvation"] = {
        name = "Prayers for Salvation",
        steps = {
            { index = 1, description = "Unlock the Chapel Door.", type = "Interact", target_name = "Chapel Door", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Examine Blood Petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Iosef.", type = "Interact", target_name = "Iosef", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["In Search of Answers"] = {
        name = "In Search of Answers",
        steps = {
            { index = 1, description = "Find the hermit's cabin.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Enter the cabin.", type = "Interact", target_name = "Cabin Door", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Examine Strange Skull.", type = "Interact", target_name = "Strange Skull", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Rite of Passage"] = {
        name = "Rite of Passage",
        steps = {
            { index = 1, description = "Accompany Lorath to Kyovashad.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Pick up Holy Cedar Tablets.", type = "Interact", target_name = "Holy Cedar Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Burn your sin.", type = "Interact", target_name = "Brazier", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Speak with the Guard.", type = "Interact", target_name = "Guard", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Missing Pieces"] = {
        name = "Missing Pieces",
        steps = {
            { index = 1, description = "Meet Lorath in Kyovashad.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with the Merchant.", type = "Interact", target_name = "Merchant", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }, -- Ozren?
            { index = 4, description = "Return to Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- ACT 1: A Cold and Iron Faith
    ["Ill Tidings"] = {
        name = "Ill Tidings",
        steps = {
            { index = 1, description = "Travel to the Cathedral of Light.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Reverend Mother Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Take Vigo's Report.", type = "Interact", target_name = "Vigo's Report", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Tarnished Luster"] = {
        name = "Tarnished Luster",
        steps = {
            { index = 1, description = "Travel to Yelesna.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Captain Ankers.", type = "Interact", target_name = "Captain Ankers", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Knight and the Magpie"] = {
        name = "The Knight and the Magpie",
        steps = {
            { index = 1, description = "Travel to the Mining Camp at Pine Hill.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Move to the Ore Hoist.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 5, description = "Find the Sealed Gate.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 6, description = "Slay the Ghouls.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }, -- Combat assumed
            { index = 7, description = "Inspect the Sealed Gate.", type = "Interact", target_name = "Sealed Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Undertaking"] = {
        name = "Undertaking",
        steps = {
            { index = 1, description = "Enter the Condemned Mines.", type = "Interact", target_name = "Condemned Mines", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Search for Vhenard/Lilith.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Inspect the Door.", type = "Interact", target_name = "Door", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Slay the monsters.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 }, -- Combat
            { index = 5, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Below"] = {
        name = "Below",
        steps = {
            { index = 1, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Bring Neyrelle to the Ore Hoist.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Examine the Ore Hoist.", type = "Interact", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Remove the obstruction.", type = "Interact", target_name = "Slain Demon", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Activate the Ore Hoist.", type = "Interact", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["In Her Wake"] = {
        name = "In Her Wake",
        steps = {
            { index = 1, description = "Travel to the Gate of Kasama.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Grendan.", type = "Interact", target_name = "Grendan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Open the Ancient Gate.", type = "Interact", target_name = "Ancient Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Inspect Blood Petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Storming the Gates"] = {
        name = "Storming the Gates",
        steps = {
            { index = 1, description = "Follow Neyrelle to the Courts of Dawn.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Inspect Blood Petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Open the Ancient Gate.", type = "Interact", target_name = "Ancient Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Slay Rohaksa.", type = "Interact", target_name = "Rohaksa", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Inspect Blood Petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Enter the Cloisters of Dusk.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 7, description = "Protect Neyrelle.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 8, description = "Go to the Mourning Shore.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["The Cost of Knowledge"] = {
        name = "The Cost of Knowledge",
        steps = {
            { index = 1, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Search for Vhenard.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Slay Vhenard.", type = "Interact", target_name = "Vhenard", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light's Guidance"] = {
        name = "Light's Guidance",
        steps = {
            { index = 1, description = "Travel to the Cathedral of Light.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Iosef.", type = "Interact", target_name = "Iosef", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Kor Valar"] = {
        name = "Kor Valar",
        steps = {
            { index = 1, description = "Travel to Kor Valar.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Reverend Mother Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Pilgrimage"] = {
        name = "Pilgrimage",
        steps = {
            { index = 1, description = "Meet Vigo at the Altar of Purity.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Read the Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Take the Idol of the Faithful.", type = "Interact", target_name = "Idol of the Faithful", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Bring Idol to Altar of Martyrdom.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 5, description = "Place Idol.", type = "Interact", target_name = "Altar of Martyrdom", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 7, description = "Bring Idol to Altar of Redemption.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 8, description = "Place Idol.", type = "Interact", target_name = "Altar of Redemption", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 9, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 10, description = "Bring Idol to Anointed Ascent.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 11, description = "Place Idol.", type = "Interact", target_name = "Anointed Ascent", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 12, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 13, description = "Bring Idol to Shrine of the Penitent.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 14, description = "Place Idol.", type = "Interact", target_name = "Shrine of the Penitent", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 15, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 16, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light's Judgement"] = {
        name = "Light's Judgement",
        steps = {
            { index = 1, description = "Enter the Alabaster Monastery.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Climb the stairs.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 3, description = "Enter the Portal of Father's Radiance.", type = "Interact", target_name = "Portal of Father's Radiance", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light's Protection"] = {
        name = "Light's Protection",
        steps = {
            { index = 1, description = "Return to Reverend Mother Prava.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Speak with Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Follow Prava inside.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Speak with Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Wayward"] = {
        name = "Wayward",
        steps = {
            { index = 1, description = "Travel to the Mistral Woods.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Search for Neyrelle.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Inspect the Three-Faced Statue/Tree/Hidden Path.", type = "Interact", target_name = "Hidden Path", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Shroud of the Horadrim"] = {
        name = "Shroud of the Horadrim",
        steps = {
            { index = 1, description = "Search for Neyrelle in the Darkened Holt.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Enter the Fiery Portal.", type = "Interact", target_name = "Fiery Portal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Follow the Bloodied Wolf.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Speak with the Bloodied Wolf.", type = "Interact", target_name = "Bloodied Wolf", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Open the Living Gate.", type = "Interact", target_name = "Living Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Follow the Wolf.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 7, description = "Speak with the Bloodied Wolf.", type = "Interact", target_name = "Bloodied Wolf", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 8, description = "Return through the Fiery Portal.", type = "Interact", target_name = "Fiery Portal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 9, description = "Search for Neyrelle.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 10, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 11, description = "Find the Horadric Vault.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 12, description = "Examine the Three-Faced Statue.", type = "Interact", target_name = "Three-Faced Statue", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Fledgling Scholar"] = {
        name = "Fledgling Scholar",
        steps = {
            { index = 1, description = "Enter the Horadric Vault.", type = "Interact", target_name = "Horadric Vault", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Follow Neyrelle.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Search for access to the Main Chamber.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 5, description = "Take the Horadric Book.", type = "Interact", target_name = "Lesser Verses and Incantations", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Bring book to Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 7, description = "Investigate the door.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 8, description = "Slay Tchort.", type = "Interact", target_name = "Tchort", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 9, description = "Inspect the Spellbook.", type = "Interact", target_name = "Death Harnessed: Theories of Rathma", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 10, description = "Bring the Pulsing Spellbook to Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Crossing Over"] = {
        name = "Crossing Over",
        steps = {
            { index = 1, description = "Travel to Pine Hill.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Use the Ore Hoist.", type = "Interact", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Go to the Black Lake.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 5, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Descent"] = {
        name = "Descent",
        steps = {
            { index = 1, description = "Enter the Necropolis of the Firstborn.", type = "Interact", target_name = "Necropolis of the Firstborn", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Pursue Lilith.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Destroy Tumors of Hatred.", type = "Interact", target_name = "Tumor of Hatred", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Slay Lilith's Lament.", type = "Interact", target_name = "Lilith's Lament", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Speak with the Knight Penitent.", type = "Interact", target_name = "Knight Penitent", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Pursue Lilith.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 }
        }
    },
    ["Light's Resolve"] = {
        name = "Light's Resolve",
        steps = {
            { index = 1, description = "Return to Open World.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Go to the Vault.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    -- ACT 2: The Knife Twists Again
    ["Dark Omens"] = {
        name = "Dark Omens",
        steps = {
            { index = 1, description = "Investigate the disturbance at Firebreak Manor.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Talk to Steward Wilfred.", type = "Interact", target_name = "Steward Wilfred", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Enter Donan's Study.", type = "Interact", target_name = "Donan's Study", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Inspect blood petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Defeat goatmen attackers.", type = "Move", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 6, description = "Talk to Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
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
