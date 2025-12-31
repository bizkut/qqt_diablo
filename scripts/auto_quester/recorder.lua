local recorder = {}
local quests = require("scripts.auto_quester.quest_db")

-- Temporary storage for recorded steps
local recorded_data = {}
local is_recording = false
local recording_quest_name = nil
local last_record_pos = nil
local record_threshold = 2.0 -- Meters

-- Load existing recordings on init to prevent data loss
local status, my_quests = pcall(require, "scripts.auto_quester.my_recorded_quests")
if status and my_quests then
    for k, v in pairs(my_quests) do
        -- We store a deep copy of the steps structure
        recorded_data[k] = {}
        for _, step in ipairs(v.steps) do
            table.insert(recorded_data[k], {
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

function recorder.init_recording(quest_name)
    if not recorded_data[quest_name] then
        -- Deep copy existing steps from hardcoded DB or init new
        recorded_data[quest_name] = {}
        if quests[quest_name] and not is_recording then
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

-- --- Auto Recording Functions ---
function recorder.start_auto_recording(quest_name)
    -- If already recording another quest, we might want to stop that one first?
    -- Or just switch context. Let's switch.
    if is_recording and recording_quest_name ~= quest_name then
        console.print("Switching Auto-Record from " .. tostring(recording_quest_name) .. " to " .. quest_name)
        recorder.save_to_file() -- Save previous work before switching
    end

    is_recording = true
    recording_quest_name = quest_name

    -- If we already have data for this quest, do we overwrite or append?
    -- For "Auto-Recorder", assuming a fresh start is safer to avoid duplicates.
    recorded_data[quest_name] = {}

    last_record_pos = get_player_position()

    console.print(">>> Auto-Recorder STARTED for: " .. quest_name)
    -- Record initial point
    recorder.add_step(quest_name, "Move", last_record_pos, "Start of Quest")
end

function recorder.stop_auto_recording(target_quest_name)
    -- Only stop if we are actually recording the quest that finished
    if is_recording and recording_quest_name then
        if target_quest_name and target_quest_name ~= recording_quest_name then
            -- A different quest finished (background quest), ignore it
            return
        end

        console.print(">>> Auto-Recorder STOPPED for: " .. recording_quest_name)
        recorder.save_to_file() -- Auto-save on completion
        is_recording = false
        recording_quest_name = nil
        last_record_pos = nil
    end
end

function recorder.add_step(quest_name, type_name, pos, desc)
    if not recorded_data[quest_name] then recorded_data[quest_name] = {} end
    local steps = recorded_data[quest_name]
    local idx = #steps + 1

    table.insert(steps, {
        index = idx,
        description = desc or ("Step " .. idx),
        type = type_name,
        pos = pos,
        range_threshold = 2.0
    })
end

function recorder.tick()
    if not is_recording or not recording_quest_name then return end

    local current_pos = get_player_position()
    if not last_record_pos then last_record_pos = current_pos end

    local dist = current_pos:dist_to_ignore_z(last_record_pos)

    if dist >= record_threshold then
        recorder.add_step(recording_quest_name, "Move", current_pos, "Auto-Path")
        last_record_pos = current_pos
    end
end

-- --- Manual Functions ---

function recorder.record_current_step_pos()
    -- Lazy load tracker to avoid circular dependency
    local tracker = require("scripts.auto_quester.tracker")

    local quest_name = tracker.current_quest_name
    recorder.init_recording(quest_name)

    local steps = recorded_data[quest_name]
    local current_idx = tracker.current_step_index

    if #steps < current_idx then
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
    -- Lazy load tracker to avoid circular dependency
    local tracker = require("scripts.auto_quester.tracker")

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

    -- Now safe to overwrite because `recorded_data` was initialized with the file's content
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
            file:write("            range_threshold = " .. (step.range_threshold or 2.0) .. "\n")
            file:write("        },\n")
        end

        file:write("    }\n")
        file:write("}\n\n")
    end

    file:write("return my_quests\n")
    file:close()

    console.print("Successfully saved quests to " .. file_path)
end

return recorder
