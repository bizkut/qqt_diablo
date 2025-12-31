local recorder = {}
local tracker = require("scripts.auto_quester.tracker")
local quests = require("scripts.auto_quester.quest_db")

-- Temporary storage for recorded steps
local recorded_data = {}

function recorder.init_recording(quest_name)
    if not recorded_data[quest_name] then
        -- Deep copy existing steps or init new
        recorded_data[quest_name] = {}
        if quests[quest_name] then
            for i, step in ipairs(quests[quest_name].steps) do
                table.insert(recorded_data[quest_name], {
                    index = step.index,
                    description = step.description,
                    type = step.type,
                    target_name = step.target_name,
                    pos = step.pos,
                    range_threshold = step.range_threshold
                })
            end
        end
    end
end

function recorder.record_current_step_pos()
    local quest_name = tracker.current_quest_name
    recorder.init_recording(quest_name)

    local steps = recorded_data[quest_name]
    local current_idx = tracker.current_step_index

    -- Ensure table has size
    if #steps < current_idx then
         -- Add new step if it doesn't exist
         table.insert(steps, {
             index = current_idx,
             description = "Custom Step " .. current_idx,
             type = "Move",
             pos = get_player_position(),
             range_threshold = 3.0
         })
    else
        steps[current_idx].pos = get_player_position()
    end

    console.print("Recorded Position for Step " .. current_idx)
end

function recorder.set_step_type(type_name)
    local quest_name = tracker.current_quest_name
    recorder.init_recording(quest_name)
    local steps = recorded_data[quest_name]
    local current_idx = tracker.current_step_index
    if steps[current_idx] then
        steps[current_idx].type = type_name
        console.print("Set Step " .. current_idx .. " Type to: " .. type_name)
    end
end

-- Serialization helper
local function serialize_value(val)
    if type(val) == "string" then
        return string.format("%q", val)
    elseif type(val) == "number" or type(val) == "boolean" then
        return tostring(val)
    elseif type(val) == "userdata" then
        -- Assume vec3
        if val.x and val.y and val.z then
             return string.format("vec3:new(%.2f, %.2f, %.2f)", val:x(), val:y(), val:z())
        else
             return "nil"
        end
    else
        return "nil"
    end
end

function recorder.save_to_file()
    local file_path = "scripts/auto_quester/my_recorded_quests.lua"
    local file = io.open(file_path, "w")

    if not file then
        console.print("Error: Could not open file for writing: " .. file_path)
        return
    end

    file:write("local my_quests = {}\n\n")

    for q_name, steps in pairs(recorded_data) do
        file:write("my_quests[\"" .. q_name .. "\"] = {\n")
        file:write("    name = \"" .. q_name .. "\",\n")
        file:write("    steps = {\n")

        for _, step in ipairs(steps) do
            file:write("        {\n")
            file:write("            index = " .. step.index .. ",\n")
            file:write("            description = " .. serialize_value(step.description or "") .. ",\n")
            file:write("            type = " .. serialize_value(step.type or "Move") .. ",\n")
            if step.target_name then
                file:write("            target_name = " .. serialize_value(step.target_name) .. ",\n")
            end
            if step.pos then
                file:write("            pos = " .. serialize_value(step.pos) .. ",\n")
            else
                file:write("            pos = vec3:new(0,0,0),\n")
            end
            file:write("            range_threshold = " .. (step.range_threshold or 3.0) .. "\n")
            file:write("        },\n")
        end

        file:write("    }\n")
        file:write("}\n\n")
    end

    file:write("return my_quests\n")
    file:close()

    console.print("Successfully saved quests to " .. file_path)
end

function recorder.dump_to_console()
    console.print("Console Dump is deprecated. Use Save to File.")
    recorder.save_to_file()
end

return recorder
