local quests = {
    -- PROLOGUE: Wandering
    ["Dusk on the Mountain"] = {
        name = "Dusk on the Mountain",
        steps = {
            { index = 1, description = "Find Oswen in Nevesk.", type = "Move", target_name = "Oswen", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Oswen.", type = "Interact", target_name = "Oswen", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Follow Vani to the Tavern.", type = "Move", target_name = "Vani", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Speak with Vani in the Tavern.", type = "Interact", target_name = "Vani", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Darkness Within"] = {
        name = "Darkness Within",
        steps = {
            { index = 1, description = "Enter Icehowl Ruins.", type = "Interact", target_name = "Icehowl Ruins", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Search the depths.", type = "Move", target_name = "Decapitated Priest", pos = vec3:new(0, 0, 0), range_threshold = 20.0 },
            { index = 3, description = "Slay X'Fal.", type = "Interact", target_name = "Decapitated Priest", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
        }
    },
    ["A Hero's Return"] = {
        name = "A Hero's Return",
        steps = {
            { index = 1, description = "Return to Nevesk.", type = "Move", target_name = "Vani", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
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
            { index = 1, description = "Find the hermit's cabin.", type = "Move", target_name = "Cabin Door", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Enter the cabin.", type = "Interact", target_name = "Cabin Door", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Examine Strange Skull.", type = "Interact", target_name = "Strange Skull", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Rite of Passage"] = {
        name = "Rite of Passage",
        steps = {
            { index = 1, description = "Accompany Lorath to Kyovashad.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Pick up Holy Cedar Tablets.", type = "Interact", target_name = "Holy Cedar Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Burn your sin.", type = "Interact", target_name = "Brazier", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Speak with the Guard.", type = "Interact", target_name = "Guard", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Missing Pieces"] = {
        name = "Missing Pieces",
        steps = {
            { index = 1, description = "Meet Lorath in Kyovashad.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with the Merchant.", type = "Interact", target_name = "Merchant", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Return to Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- ACT 1: A Cold and Iron Faith
    ["Ill Tidings"] = {
        name = "Ill Tidings",
        steps = {
            { index = 1, description = "Travel to the Cathedral of Light.", type = "Move", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Reverend Mother Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Take Vigo's Report.", type = "Interact", target_name = "Vigo's Report", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Tarnished Luster"] = {
        name = "Tarnished Luster",
        steps = {
            { index = 1, description = "Travel to Yelesna.", type = "Move", target_name = "Captain Ankers", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Captain Ankers.", type = "Interact", target_name = "Captain Ankers", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Knight and the Magpie"] = {
        name = "The Knight and the Magpie",
        steps = {
            { index = 1, description = "Travel to the Mining Camp at Pine Hill.", type = "Move", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Move to the Ore Hoist.", type = "Move", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 5, description = "Find the Sealed Gate.", type = "Move", target_name = "Sealed Gate", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 6, description = "Inspect the Sealed Gate.", type = "Interact", target_name = "Sealed Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Undertaking"] = {
        name = "Undertaking",
        steps = {
            { index = 1, description = "Enter the Condemned Mines.", type = "Interact", target_name = "Condemned Mines", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Search for Vhenard/Lilith.", type = "Move", target_name = "Door", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Inspect the Door.", type = "Interact", target_name = "Door", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Below"] = {
        name = "Below",
        steps = {
            { index = 1, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Bring Neyrelle to the Ore Hoist.", type = "Move", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Examine the Ore Hoist.", type = "Interact", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Remove the obstruction.", type = "Interact", target_name = "Slain Demon", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Activate the Ore Hoist.", type = "Interact", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["In Her Wake"] = {
        name = "In Her Wake",
        steps = {
            { index = 1, description = "Travel to the Gate of Kasama.", type = "Move", target_name = "Grendan", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Grendan.", type = "Interact", target_name = "Grendan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Open the Ancient Gate.", type = "Interact", target_name = "Ancient Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Inspect Blood Petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Storming the Gates"] = {
        name = "Storming the Gates",
        steps = {
            { index = 1, description = "Follow Neyrelle to the Courts of Dawn.", type = "Move", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Inspect Blood Petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Open the Ancient Gate.", type = "Interact", target_name = "Ancient Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Slay Rohaksa.", type = "Interact", target_name = "Rohaksa", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Inspect Blood Petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Go to the Mourning Shore.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 }
        }
    },
    ["The Cost of Knowledge"] = {
        name = "The Cost of Knowledge",
        steps = {
            { index = 1, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Search for Vhenard.", type = "Move", target_name = "Vhenard", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Slay Vhenard.", type = "Interact", target_name = "Vhenard", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light's Guidance"] = {
        name = "Light's Guidance",
        steps = {
            { index = 1, description = "Travel to the Cathedral of Light.", type = "Move", target_name = "Iosef", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Iosef.", type = "Interact", target_name = "Iosef", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Kor Valar"] = {
        name = "Kor Valar",
        steps = {
            { index = 1, description = "Travel to Kor Valar.", type = "Move", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Reverend Mother Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Pilgrimage"] = {
        name = "Pilgrimage",
        steps = {
            { index = 1, description = "Meet Vigo at the Altar of Purity.", type = "Move", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Read the Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Take the Idol of the Faithful.", type = "Interact", target_name = "Idol of the Faithful", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Bring Idol to Altar of Martyrdom.", type = "Move", target_name = "Altar of Martyrdom", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 5, description = "Place Idol.", type = "Interact", target_name = "Altar of Martyrdom", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 7, description = "Bring Idol to Altar of Redemption.", type = "Move", target_name = "Altar of Redemption", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 8, description = "Place Idol.", type = "Interact", target_name = "Altar of Redemption", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 9, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 10, description = "Bring Idol to Anointed Ascent.", type = "Move", target_name = "Anointed Ascent", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 11, description = "Place Idol.", type = "Interact", target_name = "Anointed Ascent", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 12, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 13, description = "Bring Idol to Shrine of the Penitent.", type = "Move", target_name = "Shrine of the Penitent", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 14, description = "Place Idol.", type = "Interact", target_name = "Shrine of the Penitent", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 15, description = "Read Tablet.", type = "Interact", target_name = "Tablet", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 16, description = "Speak with Vigo.", type = "Interact", target_name = "Vigo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light's Judgement"] = {
        name = "Light's Judgement",
        steps = {
            { index = 1, description = "Enter the Alabaster Monastery.", type = "Move", target_name = "Portal of Father's Radiance", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Enter the Portal of Father's Radiance.", type = "Interact", target_name = "Portal of Father's Radiance", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light's Protection"] = {
        name = "Light's Protection",
        steps = {
            { index = 1, description = "Return to Reverend Mother Prava.", type = "Move", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Speak with Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Follow Prava inside.", type = "Move", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Speak with Prava.", type = "Interact", target_name = "Reverend Mother Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Wayward"] = {
        name = "Wayward",
        steps = {
            { index = 1, description = "Search for Neyrelle.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Inspect the Hidden Path.", type = "Interact", target_name = "Hidden Path", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Shroud of the Horadrim"] = {
        name = "Shroud of the Horadrim",
        steps = {
            { index = 1, description = "Search for Neyrelle.", type = "Move", target_name = "Fiery Portal", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Enter the Fiery Portal.", type = "Interact", target_name = "Fiery Portal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Follow the Bloodied Wolf.", type = "Move", target_name = "Bloodied Wolf", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Speak with the Bloodied Wolf.", type = "Interact", target_name = "Bloodied Wolf", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Open the Living Gate.", type = "Interact", target_name = "Living Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Speak with the Bloodied Wolf.", type = "Interact", target_name = "Bloodied Wolf", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 7, description = "Return through the Fiery Portal.", type = "Interact", target_name = "Fiery Portal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 8, description = "Search for Neyrelle.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 9, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 10, description = "Find the Horadric Vault.", type = "Move", target_name = "Three-Faced Statue", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 11, description = "Examine the Three-Faced Statue.", type = "Interact", target_name = "Three-Faced Statue", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Fledgling Scholar"] = {
        name = "Fledgling Scholar",
        steps = {
            { index = 1, description = "Enter the Horadric Vault.", type = "Interact", target_name = "Horadric Vault", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Follow Neyrelle.", type = "Move", target_name = "Lesser Verses and Incantations", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Take the Horadric Book.", type = "Interact", target_name = "Lesser Verses and Incantations", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Bring book to Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 6, description = "Investigate the door.", type = "Move", target_name = "Tchort", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 7, description = "Slay Tchort.", type = "Interact", target_name = "Tchort", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 8, description = "Inspect the Spellbook.", type = "Interact", target_name = "Death Harnessed: Theories of Rathma", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 9, description = "Bring the Pulsing Spellbook to Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Crossing Over"] = {
        name = "Crossing Over",
        steps = {
            { index = 1, description = "Travel to Pine Hill.", type = "Move", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Use the Ore Hoist.", type = "Interact", target_name = "Ore Hoist", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Go to the Black Lake.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 5, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Descent"] = {
        name = "Descent",
        steps = {
            { index = 1, description = "Enter the Necropolis of the Firstborn.", type = "Interact", target_name = "Necropolis of the Firstborn", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Pursue Lilith (Tumors).", type = "Move", target_name = "Tumor of Hatred", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Destroy Tumors of Hatred.", type = "Interact", target_name = "Tumor of Hatred", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Slay Lilith's Lament.", type = "Interact", target_name = "Lilith's Lament", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Speak with the Knight Penitent.", type = "Interact", target_name = "Knight Penitent", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light's Resolve"] = {
        name = "Light's Resolve",
        steps = {
            { index = 1, description = "Go to the Vault.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- ACT 2: The Knife Twists Again
    ["Dark Omens"] = {
        name = "Dark Omens",
        steps = {
            { index = 1, description = "Talk to Steward Wilfred.", type = "Interact", target_name = "Steward Wilfred", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Enter Donan's Study.", type = "Interact", target_name = "Donan's Study", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Inspect blood petals.", type = "Interact", target_name = "Blood Petals", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Talk to Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Encroaching Shadows"] = {
        name = "Encroaching Shadows",
        steps = {
            { index = 1, description = "Travel to Braestaig.", type = "Move", target_name = "Chieftain Asgail", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Chieftain Asgail.", type = "Interact", target_name = "Chieftain Asgail", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Yorin.", type = "Interact", target_name = "Yorin", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Find Weeping Cairns entrance.", type = "Move", target_name = "Weeping Cairns", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 5, description = "Enter Weeping Cairns.", type = "Interact", target_name = "Weeping Cairns", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Exhuming the Forgotten"] = {
        name = "Exhuming the Forgotten",
        steps = {
            { index = 1, description = "Enter Weeping Cairns.", type = "Move", target_name = "Wardstone Altar", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Destroy Altar/Get Wardstone.", type = "Interact", target_name = "Wardstone Altar", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Place Wardstone.", type = "Interact", target_name = "Runic Stone", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Enter Ancestor Heights.", type = "Move", target_name = "Ancestor Heights", pos = vec3:new(0, 0, 0), range_threshold = 10.0 }
        }
    },
    ["Harrowed Lament"] = {
        name = "Harrowed Lament",
        steps = {
            { index = 1, description = "Search for Airidah.", type = "Move", target_name = "Yorin", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Yorin/Arlo.", type = "Interact", target_name = "Yorin", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Destroy Risen Remains.", type = "Interact", target_name = "Risen Remains", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Apex of Misery"] = {
        name = "Apex of Misery",
        steps = {
            { index = 1, description = "Head to Solitude.", type = "Move", target_name = "Airidah", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Airidah.", type = "Interact", target_name = "Airidah", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Airidah.", type = "Interact", target_name = "Airidah", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Parting Embers"] = {
        name = "Parting Embers",
        steps = {
            { index = 1, description = "Return to Braestaig.", type = "Move", target_name = "Yorin", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Yorin.", type = "Interact", target_name = "Yorin", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Feral Nature"] = {
        name = "Feral Nature",
        steps = {
            { index = 1, description = "Travel to Tirmair.", type = "Move", target_name = "Knight", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Knights.", type = "Interact", target_name = "Knight", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Go to Boglann Stone Circle.", type = "Move", target_name = "Message", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 4, description = "Read Message.", type = "Interact", target_name = "Message", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Follow the Wolf.", type = "Move", target_name = "Nafain", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["The Beast Within"] = {
        name = "The Beast Within",
        steps = {
            { index = 1, description = "Follow the Wolf.", type = "Move", target_name = "Nafain", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Speak with Nafain.", type = "Interact", target_name = "Nafain", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Path of Rage"] = {
        name = "The Path of Rage",
        steps = {
            { index = 1, description = "Enter Untamed Thicket.", type = "Move", target_name = "Unnatural Growth", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Destroy Unnatural Growths.", type = "Interact", target_name = "Unnatural Growth", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Destroy Blood Clot.", type = "Interact", target_name = "Profane Blood Clot", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Fangs of Corruption"] = {
        name = "Fangs of Corruption",
        steps = {
            { index = 1, description = "Enter Corrupted Spawning Ground.", type = "Move", target_name = "Amalgame of Rage", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Amalgame of Rage.", type = "Interact", target_name = "Amalgame of Rage", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Stemming the Flow"] = {
        name = "Stemming the Flow",
        steps = {
            { index = 1, description = "Return to Nafain.", type = "Move", target_name = "Nafain", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Nafain.", type = "Interact", target_name = "Nafain", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Buried Secrets"] = {
        name = "Buried Secrets",
        steps = {
            { index = 1, description = "Return to Eldhaime.", type = "Move", target_name = "Commander Antje", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Commander Antje.", type = "Interact", target_name = "Commander Antje", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["In Ruins"] = {
        name = "In Ruins",
        steps = {
            { index = 1, description = "Enter Great Hall.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Entombed Legacy"] = {
        name = "Entombed Legacy",
        steps = {
            { index = 1, description = "Go to Soulstone Chamber.", type = "Move", target_name = "Lilith's Mark", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Interact with Lilith's Mark.", type = "Interact", target_name = "Lilith's Mark", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Shadow Over Cerrigar"] = {
        name = "Shadow Over Cerrigar",
        steps = {
            { index = 1, description = "Go to Cerrigar.", type = "Move", target_name = "Cerrigar Gate", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Enter Cerrigar.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["As the World Burns"] = {
        name = "As the World Burns",
        steps = {
            { index = 1, description = "Defeat Astaroth.", type = "Interact", target_name = "Astaroth", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Guard.", type = "Interact", target_name = "Guard", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- ACT 3: The Making of Monsters
    ["The Spreading Darkness"] = {
        name = "The Spreading Darkness",
        steps = {
            { index = 1, description = "Go to Ked Bardu.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Teckrin.", type = "Interact", target_name = "Teckrin", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Suffering Disquiet"] = {
        name = "Suffering Disquiet",
        steps = {
            { index = 1, description = "Go to Orbei Monastery.", type = "Move", target_name = "Crusader Skull", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Crusader Skull.", type = "Interact", target_name = "Crusader Skull", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Learn Secret Litanies.", type = "Interact", target_name = "Secret Litany", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Defeat Eidolon of Orbei.", type = "Interact", target_name = "Eidolon of Orbei", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Whittling Sanity"] = {
        name = "Whittling Sanity",
        steps = {
            { index = 1, description = "Meet Lorath in Abahru Canyon.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Hell Rift.", type = "Move", target_name = "Genbar", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 3, description = "Find Genbar.", type = "Move", target_name = "Genbar", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 4, description = "Defeat Genbar.", type = "Interact", target_name = "Genbar", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["A Moment to Collect"] = {
        name = "A Moment to Collect",
        steps = {
            { index = 1, description = "Meet Lorath in Ked Bardu.", type = "Move", target_name = "Medallion", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Interact with Medallion.", type = "Interact", target_name = "Medallion", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Brought Low"] = {
        name = "Brought Low",
        steps = {
            { index = 1, description = "Go to Guulrahn.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The City of Blood and Dust"] = {
        name = "The City of Blood and Dust",
        steps = {
            { index = 1, description = "Enter Marketplace.", type = "Move", target_name = "Woman", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Save Woman.", type = "Interact", target_name = "Woman", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Find Oyuun.", type = "Move", target_name = "Oyuun", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 4, description = "Speak with Oyuun.", type = "Interact", target_name = "Oyuun", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Small Blessings"] = {
        name = "Small Blessings",
        steps = {
            { index = 1, description = "Speak with Oyuun.", type = "Interact", target_name = "Oyuun", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Whispers from the Past"] = {
        name = "Whispers from the Past",
        steps = {
            { index = 1, description = "Enter Offal Pits.", type = "Move", target_name = "Palace Door", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Hidden Alcove.", type = "Move", target_name = "Palace Door", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 3, description = "Enter Palace.", type = "Interact", target_name = "Palace Door", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Defeat Mother's Judgment.", type = "Interact", target_name = "Mother's Judgment", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Investigate Elias's Sanctum.", type = "Move", target_name = "Elias's Sanctum", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["Through the Dark Glass"] = {
        name = "Through the Dark Glass",
        steps = {
            { index = 1, description = "Go to Mt. Civo.", type = "Move", target_name = "Shrine of Baal", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Shrine of Baal.", type = "Interact", target_name = "Shrine of Baal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Find Shrine of Diablo.", type = "Interact", target_name = "Shrine of Diablo", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Find Shrine of Mephisto.", type = "Interact", target_name = "Shrine of Mephisto", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Enter Portal.", type = "Interact", target_name = "Portal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Descent Into Flame"] = {
        name = "Descent Into Flame",
        steps = {
            { index = 1, description = "Enter Temple of Primes.", type = "Move", target_name = "Brol", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Hall of Hatred.", type = "Move", target_name = "Brol", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Defeat Brol.", type = "Interact", target_name = "Brol", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Loose Threads"] = {
        name = "Loose Threads",
        steps = {
            { index = 1, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Oasis of Memories"] = {
        name = "Oasis of Memories",
        steps = {
            { index = 1, description = "Go to Tarsarak.", type = "Move", target_name = "Meshif", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Meshif.", type = "Interact", target_name = "Meshif", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Flesh from Bone"] = {
        name = "Flesh from Bone",
        steps = {
            { index = 1, description = "Meet at Forsaken Chapel.", type = "Move", target_name = "Outer Gardens", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Survive Sandstorm.", type = "Move", target_name = "Outer Gardens", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 3, description = "Reach Outer Gardens.", type = "Move", target_name = "Outer Gardens", pos = vec3:new(0, 0, 0), range_threshold = 10.0 }
        }
    },
    ["Beneath the Mask"] = {
        name = "Beneath the Mask",
        steps = {
            { index = 1, description = "Speak with Meshif.", type = "Interact", target_name = "Meshif", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Enter Dungeon.", type = "Move", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["Piercing the Veil"] = {
        name = "Piercing the Veil",
        steps = {
            { index = 1, description = "Find Elias.", type = "Move", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Elias (Fight 1).", type = "Interact", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Defeat Elias (Fight 2).", type = "Interact", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Defeat Elias (Fight 3).", type = "Interact", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Exhumed Relics"] = {
        name = "Exhumed Relics",
        steps = {
            { index = 1, description = "Return to Chapel.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- ACT 4: A Gathering Storm
    ["Prying the Eye"] = {
        name = "Prying the Eye",
        steps = {
            { index = 1, description = "Speak with Taissa.", type = "Interact", target_name = "Taissa", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Grab Sightless Eye.", type = "Interact", target_name = "Sightless Eye", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Place Eye on Pedestal.", type = "Interact", target_name = "Pedestal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Interact with Eye.", type = "Interact", target_name = "Sightless Eye", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["A Master's Touch"] = {
        name = "A Master's Touch",
        steps = {
            { index = 1, description = "Go to Kyovashad.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Lost Arts"] = {
        name = "Lost Arts",
        steps = {
            { index = 1, description = "Go to Horadric Vault.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Find Donan.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["A Meeting of the Minds"] = {
        name = "A Meeting of the Minds",
        steps = {
            { index = 1, description = "Go to Forsaken Chapel.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Anguish Incarnate"] = {
        name = "Anguish Incarnate",
        steps = {
            { index = 1, description = "Defeat Andariel.", type = "Interact", target_name = "Andariel", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Eye of the Storm"] = {
        name = "Eye of the Storm",
        steps = {
            { index = 1, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- ACT 5: Secrets Bartered, Fates Sold
    ["The Path Divided"] = {
        name = "The Path Divided",
        steps = {
            { index = 1, description = "Go to Zarbinzet.", type = "Move", target_name = "Taissa", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Taissa.", type = "Interact", target_name = "Taissa", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Secrets of the Zakarum"] = {
        name = "Secrets of the Zakarum",
        steps = {
            { index = 1, description = "Go to Ruins of Rakhat Keep.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Enter Inner Court.", type = "Move", target_name = "Inner Court", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 4, description = "Follow Donan.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["Entombed Hatred"] = {
        name = "Entombed Hatred",
        steps = {
            { index = 1, description = "Enter Black Tomb.", type = "Move", target_name = "Black Tomb", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Perform Ritual.", type = "Interact", target_name = "Ritual", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Swamp Hospitality"] = {
        name = "Swamp Hospitality",
        steps = {
            { index = 1, description = "Go to Wejinhani.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Witch's Tower.", type = "Move", target_name = "Witch", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 3, description = "Speak with Witch.", type = "Interact", target_name = "Witch", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Witch of the Wastes"] = {
        name = "Witch of the Wastes",
        steps = {
            { index = 1, description = "Find Valtha.", type = "Move", target_name = "Valtha", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Valtha.", type = "Interact", target_name = "Valtha", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Collect Quicksilver.", type = "Interact", target_name = "Quicksilver", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Return to Witch.", type = "Interact", target_name = "Witch", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Encumbered Mind"] = {
        name = "Encumbered Mind",
        steps = {
            { index = 1, description = "Mix Quicksilver.", type = "Interact", target_name = "Quicksilver", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Turn Wheel.", type = "Interact", target_name = "Wheel", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Grind Sulfur.", type = "Interact", target_name = "Sulfur", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Witch.", type = "Interact", target_name = "Witch", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Cage of Grief"] = {
        name = "The Cage of Grief",
        steps = {
            { index = 1, description = "Go to Hungering Swamp.", type = "Move", target_name = "Ritual Site", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Yellow Lotus.", type = "Interact", target_name = "Yellow Lotus", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Find Maggot Ichor.", type = "Interact", target_name = "Maggot Ichor", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Perform Ritual.", type = "Interact", target_name = "Bowl", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 5, description = "Enter Portal.", type = "Interact", target_name = "Portal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["One Step Forward"] = {
        name = "One Step Forward",
        steps = {
            { index = 1, description = "Speak with Witch.", type = "Interact", target_name = "Witch", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Tainted Flesh"] = {
        name = "Tainted Flesh",
        steps = {
            { index = 1, description = "Find Lorath.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Timue.", type = "Interact", target_name = "Timue", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Wrack & Ruin"] = {
        name = "Wrack & Ruin",
        steps = {
            { index = 1, description = "Find Yngovani.", type = "Move", target_name = "Serpent Door", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Find Left Eye.", type = "Interact", target_name = "Left Eye", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Find Right Eye.", type = "Interact", target_name = "Right Eye", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Open Serpent Door.", type = "Interact", target_name = "Serpent Door", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Cold Blood"] = {
        name = "Cold Blood",
        steps = {
            { index = 1, description = "Enter Slithering Dark.", type = "Move", target_name = "Mohlon", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Mohlon.", type = "Interact", target_name = "Mohlon", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Take Incense.", type = "Interact", target_name = "Incense", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Judgment of the Swamp"] = {
        name = "Judgment of the Swamp",
        steps = {
            { index = 1, description = "Go to Altar.", type = "Move", target_name = "Bloodstained Altar", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Light Incense.", type = "Interact", target_name = "Bloodstained Altar", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Serpentine Path"] = {
        name = "The Serpentine Path",
        steps = {
            { index = 1, description = "Follow Serpent.", type = "Move", target_name = "Serpent", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Wait for Ladder.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["Dirge of the Mire"] = {
        name = "Dirge of the Mire",
        steps = {
            { index = 1, description = "Follow Serpent.", type = "Move", target_name = "Serpent", pos = vec3:new(0, 0, 0), range_threshold = 5.0 },
            { index = 2, description = "Wound Serpent.", type = "Interact", target_name = "Serpent", pos = vec3:new(0, 0, 0), range_threshold = 5.0 }
        }
    },
    ["The Slow, Beating Heart"] = {
        name = "The Slow, Beating Heart",
        steps = {
            { index = 1, description = "Ride Serpent.", type = "Interact", target_name = "Serpent", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Arrive at Tree of Whispers.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["A Cold and Lifeless Shore"] = {
        name = "A Cold and Lifeless Shore",
        steps = {
            { index = 1, description = "Go to Backwater.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Find Coffin.", type = "Move", target_name = "Coffin", pos = vec3:new(0, 0, 0), range_threshold = 10.0 }
        }
    },
    ["Picking Through the Bones"] = {
        name = "Picking Through the Bones",
        steps = {
            { index = 1, description = "Enter Shipwreck.", type = "Move", target_name = "Coffin", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Interact with Coffin.", type = "Interact", target_name = "Coffin", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Beneath the Wine-Dark Sea"] = {
        name = "Beneath the Wine-Dark Sea",
        steps = {
            { index = 1, description = "Find Echo of Elias.", type = "Move", target_name = "Echo of Elias", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Interact with Echo.", type = "Interact", target_name = "Echo of Elias", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Take Elias's Finger.", type = "Interact", target_name = "Finger", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Fragments of Mortality"] = {
        name = "Fragments of Mortality",
        steps = {
            { index = 1, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Burn Finger.", type = "Interact", target_name = "Fire", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["On the Precipice"] = {
        name = "On the Precipice",
        steps = {
            { index = 1, description = "Go to Zakarum Keep.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Enter Black Tomb.", type = "Move", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 4, description = "Defeat Elias.", type = "Interact", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Knee-Deep in Faith"] = {
        name = "Knee-Deep in Faith",
        steps = {
            { index = 1, description = "Find Elias.", type = "Move", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Elias.", type = "Interact", target_name = "Elias", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["A Chorus of Voices"] = {
        name = "A Chorus of Voices",
        steps = {
            { index = 1, description = "Return to Tree of Whispers.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- ACT 6: Dance of the Makers
    ["Evil Stirs in Kehjistan"] = {
        name = "Evil Stirs in Kehjistan",
        steps = {
            { index = 1, description = "Go to Tarsarak.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Jewel of the East"] = {
        name = "The Jewel of the East",
        steps = {
            { index = 1, description = "Go to Caldeum Bazaar.", type = "Move", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Search for Lilith Begins"] = {
        name = "The Search for Lilith Begins",
        steps = {
            { index = 1, description = "Interact with Heavy Gate.", type = "Interact", target_name = "Heavy Gate", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Find Prava.", type = "Move", target_name = "Prava", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 4, description = "Speak with Prava.", type = "Interact", target_name = "Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Scouring of Caldeum"] = {
        name = "The Scouring of Caldeum",
        steps = {
            { index = 1, description = "Escort Allies.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Uznu.", type = "Interact", target_name = "Uznu", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Open Gate.", type = "Interact", target_name = "Gate Winch", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Walls Shake"] = {
        name = "The Walls Shake",
        steps = {
            { index = 1, description = "Enter Foul Cistern.", type = "Move", target_name = "Duriel", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Duriel.", type = "Interact", target_name = "Duriel", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Turning the Tide"] = {
        name = "Turning the Tide",
        steps = {
            { index = 1, description = "Enter Imperial Palace.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Enter Gates of Hell.", type = "Interact", target_name = "Gate of Hell", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Essence of Hatred"] = {
        name = "Essence of Hatred",
        steps = {
            { index = 1, description = "Go to Burning Overpass.", type = "Move", target_name = "Prava", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Prava.", type = "Interact", target_name = "Prava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["In Desolation's Wake"] = {
        name = "In Desolation's Wake",
        steps = {
            { index = 1, description = "Speak with Donan.", type = "Interact", target_name = "Donan", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Defeat Ninsa.", type = "Interact", target_name = "Ninsa", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Defeat Karum.", type = "Interact", target_name = "Karum", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 4, description = "Defeat Ashava.", type = "Interact", target_name = "Ashava", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Light Extinguished"] = {
        name = "Light Extinguished",
        steps = {
            { index = 1, description = "Enter Molted Span.", type = "Move", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Neyrelle.", type = "Interact", target_name = "Neyrelle", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["The Blind Eye"] = {
        name = "The Blind Eye",
        steps = {
            { index = 1, description = "Use Sightless Eye.", type = "Interact", target_name = "Sightless Eye", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Find Lilith's Altar.", type = "Move", target_name = "Lilith's Altar", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 3, description = "Enter Portal.", type = "Interact", target_name = "Portal", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["What Lies Ahead"] = {
        name = "What Lies Ahead",
        steps = {
            { index = 1, description = "Enter Throne of Hatred.", type = "Move", target_name = "Lilith", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Defeat Lilith.", type = "Interact", target_name = "Lilith", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 3, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },

    -- EPILOGUE: From the Wound Spilled
    ["Promises"] = {
        name = "Promises",
        steps = {
            { index = 1, description = "Speak with Lorath in Chapel.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 },
            { index = 2, description = "Defeat Iosef.", type = "Interact", target_name = "Iosef", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["A Heavy Burden"] = {
        name = "A Heavy Burden",
        steps = {
            { index = 1, description = "Go to Horadric Vault.", type = "Move", target_name = "Letter", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Read Letter.", type = "Interact", target_name = "Letter", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
        }
    },
    ["Legacy of the Horadrim"] = {
        name = "Legacy of the Horadrim",
        steps = {
            { index = 1, description = "Go to Firebreak Manor.", type = "Move", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 10.0 },
            { index = 2, description = "Speak with Lorath.", type = "Interact", target_name = "Lorath", pos = vec3:new(0, 0, 0), range_threshold = 3.0 }
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
