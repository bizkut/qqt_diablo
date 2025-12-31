local executor = {}
local tracker = require("scripts.auto_quester.tracker")
local quests = require("scripts.auto_quester.quest_db")

-- Helper to find nearest actor by name
local function get_actor_by_name(name)
    local actors = actors_manager.get_all_actors()
    local best_actor = nil
    local best_dist = math.huge
    local player_pos = get_player_position()

    for _, actor in ipairs(actors) do
        local skin_name = actor:get_skin_name()
        if skin_name and skin_name:match(name) then
            local dist = actor:get_position():squared_dist_to_ignore_z(player_pos)
            if dist < best_dist then
                best_dist = dist
                best_actor = actor
            end
        end
    end
    return best_actor
end

function executor.execute_step()
    if not tracker.is_active or tracker.mode ~= "RUNNER" then return end

    local quest = quests[tracker.current_quest_name]
    if not quest then
        console.print("Quest not found in DB: " .. tostring(tracker.current_quest_name))
        return
    end

    local step = quest.steps[tracker.current_step_index]
    if not step then
        console.print("Quest Complete or Invalid Step")
        tracker.is_active = false
        return
    end

    local player_pos = get_player_position()
    local target_pos = step.pos
    -- Safety check for nil/placeholder pos
    if not target_pos or (target_pos:x() == 0 and target_pos:y() == 0) then
         -- If it's an Interact step, try to find the actor dynamically if pos is missing
        if step.type == "Interact" and step.target_name then
             local actor = get_actor_by_name(step.target_name)
             if actor then
                 target_pos = actor:get_position()
             else
                 console.print("Step " .. step.index .. ": Missing coordinates and Actor not found.")
                 return
             end
        else
             console.print("Step " .. step.index .. ": Coordinates are invalid (0,0,0). Please Record them first.")
             return
        end
    end

    local dist = player_pos:dist_to_ignore_z(target_pos)
    local threshold = step.range_threshold or 2.0

    if step.type == "Move" then
        if dist > threshold then
            pathfinder.request_move(target_pos)
        else
            console.print("Step " .. step.index .. " (Move) Complete.")
            tracker.advance_step()
        end

    elseif step.type == "Interact" then
        if dist > threshold then
            pathfinder.request_move(target_pos)
        else
            local actor = get_actor_by_name(step.target_name)
            if actor then
                if loot_manager.interact_with_object(actor) then
                    console.print("Interacted with " .. step.target_name)
                    -- Wait a bit before advancing? (handled by next frame updates usually)
                    tracker.advance_step()
                end
            else
                console.print("Waiting for Actor: " .. step.target_name)
            end
        end
    end
end

return executor
