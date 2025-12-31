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
    -- Default to tracking the globally selected quest
    if not tracker.is_active or tracker.mode ~= "RUNNER" then return end

    local quest = quests[tracker.current_quest_name]
    executor.run_quest_logic(quest, tracker.current_step_index)
end

function executor.execute_auto(quest_name, step_index)
    local quest = quests[quest_name]
    if quest then
        executor.run_quest_logic(quest, step_index)
    end
end

function executor.run_quest_logic(quest, step_index)
    if not quest then
        console.print("Quest data not found.")
        return
    end

    local step = quest.steps[step_index]
    if not step then
        console.print("Quest Complete or Invalid Step")
        -- In auto mode, maybe we mark it done? For now just stop.
        if tracker.mode == "RUNNER" then
            tracker.is_active = false
        end
        return
    end

    local player_pos = get_player_position()
    local target_pos = step.pos

    -- Safety check/Dynamic Actor Search
    if not target_pos or (target_pos:x() == 0 and target_pos:y() == 0) then
        if step.type == "Interact" and step.target_name then
             local actor = get_actor_by_name(step.target_name)
             if actor then
                 target_pos = actor:get_position()
             else
                 console.print("Step " .. step.index .. ": Waiting for Actor " .. step.target_name)
                 return
             end
        else
             console.print("Step " .. step.index .. ": Invalid Coordinates")
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
                    tracker.advance_step()
                end
            else
                console.print("Waiting for Actor: " .. step.target_name)
            end
        end
    end
end

return executor
