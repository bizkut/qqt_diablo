local tracker = {}
local recorder = require("scripts.auto_quester.recorder")

tracker.current_quest_name = "Dusk on the Mountain"
tracker.current_step_index = 1
tracker.is_active = false
tracker.mode = "RUNNER" -- "RUNNER" or "RECORDER" or "AUTO_RECORDER"

-- Quest Polling State
local known_quests = {}
local last_check_time = 0
local check_interval = 1.0
local is_initialized = false

function tracker.set_quest(name)
    tracker.current_quest_name = name
    tracker.current_step_index = 1
end

function tracker.advance_step()
    tracker.current_step_index = tracker.current_step_index + 1
    console.print("Advancing to Step: " .. tostring(tracker.current_step_index))
end

function tracker.get_current_step_index()
    return tracker.current_step_index
end

function tracker.set_step_index(index)
    tracker.current_step_index = index
end

-- --- Auto-Record Polling ---

function tracker.update_quest_list()
    if tracker.mode ~= "AUTO_RECORDER" or not tracker.is_active then return end

    local current_time = os.clock()
    if current_time - last_check_time < check_interval then return end
    last_check_time = current_time

    local active_quests = get_quests()
    local current_quest_ids = {}

    -- First pass: Build current ID set and handle new quests
    for _, quest in pairs(active_quests) do
        local q_id = quest:get_id()
        local q_name = quest:get_name()
        current_quest_ids[q_id] = true

        if not known_quests[q_id] then
            known_quests[q_id] = q_name

            -- Only trigger start logic if we are past the first initialization frame
            if is_initialized then
                console.print("New Quest Detected: " .. q_name)
                recorder.start_auto_recording(q_name)
            end
        end
    end

    -- Check for finished quests
    for q_id, q_name in pairs(known_quests) do
        if not current_quest_ids[q_id] then
            -- QUEST FINISHED (or abandoned)
            console.print("Quest Finished/Lost: " .. q_name)
            recorder.stop_auto_recording(q_name)
            known_quests[q_id] = nil
        end
    end

    is_initialized = true
end

return tracker
