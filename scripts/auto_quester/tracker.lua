local tracker = {}

tracker.current_quest_name = "Dusk on the Mountain" -- Default starter
tracker.current_step_index = 1
tracker.is_active = false
tracker.mode = "RUNNER" -- "RUNNER" or "RECORDER"

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

return tracker
