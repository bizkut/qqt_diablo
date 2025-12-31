local npc_manager = {}

-- Table format: { ["NPC_Name"] = {x=1.0, y=2.0, z=3.0}, ... }
local npc_db = {}
local db_file_path = "scripts/auto_quester/npc_locations.lua"
local last_save_time = 0
local save_interval = 30.0 -- Autosave every 30s if changes made
local has_unsaved_changes = false

-- Serialization helper
local function serialize_pos(pos)
    if type(pos) == "table" then return pos end -- Already table
    if pos.x and pos.y and pos.z then
        return { x = pos:x(), y = pos:y(), z = pos:z() }
    end
    return nil
end

function npc_manager.load_db()
    local status, db = pcall(require, "scripts.auto_quester.npc_locations")
    if status and db then
        npc_db = db
        -- console.print("NPC DB Loaded: " .. tostring(utils.table_length(db)) .. " entries.")
    else
        npc_db = {}
        -- console.print("NPC DB initialized empty.")
    end
end

function npc_manager.save_db()
    local file = io.open(db_file_path, "w")
    if not file then
        console.print("Error: Could not open NPC DB file for writing.")
        return
    end

    file:write("return {\n")
    for name, pos in pairs(npc_db) do
        if pos and pos.x then
            file:write(string.format("    [%q] = { x = %.2f, y = %.2f, z = %.2f },\n", name, pos.x, pos.y, pos.z))
        end
    end
    file:write("}\n")
    file:close()
    has_unsaved_changes = false
    console.print("NPC Database Saved.")
end

function npc_manager.update_npc(name, vec3_pos)
    if not name or name == "" or not vec3_pos then return end

    local new_pos = serialize_pos(vec3_pos)
    local existing = npc_db[name]

    -- Update if new or if distance check?
    -- For now, we assume simple overwrite or first-seen.
    -- Let's stick to first-seen or overwrite if significantly different?
    -- Overwriting updates moving NPCs, but static NPCs shouldn't move.

    if not existing then
        npc_db[name] = new_pos
        has_unsaved_changes = true
        -- console.print("Discovered New NPC: " .. name)
    else
        -- Optional: Update logic if needed
    end

    -- Autosave logic
    local time = os.clock()
    if has_unsaved_changes and (time - last_save_time > save_interval) then
        npc_manager.save_db()
        last_save_time = time
    end
end

function npc_manager.get_npc_pos(name)
    local data = npc_db[name]
    if data then
        -- Return as vec3 object
        return vec3:new(data.x, data.y, data.z)
    end
    return nil
end

-- Init
npc_manager.load_db()

return npc_manager
