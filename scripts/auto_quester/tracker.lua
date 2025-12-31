local tracker = {}
local recorder = require("scripts.auto_quester.recorder")

tracker.current_quest_name = "Dusk on the Mountain"
tracker.current_step_index = 1
tracker.is_active = false
tracker.mode = "RUNNER" -- "RUNNER", "RECORDER", "AUTO_RECORDER", "AUTO_RUNNER"

-- Quest Polling State
local known_quests = {}
local last_check_time = 0
local check_interval = 1.0
local is_initialized = false

-- Active Quest List for Auto-Runner
tracker.active_quests = {}

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

-- --- Polling ---

function tracker.update_quest_list()
    -- We run this in AUTO_RECORDER and AUTO_RUNNER modes
    if not (tracker.mode == "AUTO_RECORDER" or tracker.mode == "AUTO_RUNNER") or not tracker.is_active then return end

    local current_time = os.clock()
    if current_time - last_check_time < check_interval then return end
    last_check_time = current_time

    local active_quests_raw = get_quests()
    local current_quest_ids = {}
    tracker.active_quests = {} -- Reset exposed list

    for _, quest in pairs(active_quests_raw) do
        local q_id = quest:get_id()
        local q_name = quest:get_name()
        current_quest_ids[q_id] = true

        -- Expose for Auto-Runner
        table.insert(tracker.active_quests, q_name)

        -- Logic for Auto-Recorder
        if tracker.mode == "AUTO_RECORDER" then
            if not known_quests[q_id] then
                known_quests[q_id] = q_name
                if is_initialized then
                    console.print("New Quest Detected: " .. q_name)
                    recorder.start_auto_recording(q_name)
                end
            end
        end
    end

    -- Check for finished quests (Auto-Recorder only)
    if tracker.mode == "AUTO_RECORDER" then
        for q_id, q_name in pairs(known_quests) do
            if not current_quest_ids[q_id] then
                console.print("Quest Finished/Lost: " .. q_name)
                recorder.stop_auto_recording(q_name)
                known_quests[q_id] = nil
            end
        end
    end

    is_initialized = true
end

return tracker
