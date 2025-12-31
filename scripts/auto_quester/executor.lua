local executor = {}
local tracker = require("scripts.auto_quester.tracker")
local quests = require("scripts.auto_quester.quest_db")
local npc_manager = require("scripts.auto_quester.npc_db_manager")

-- Helper to find nearest actor by name (Screen/Local)
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
        if tracker.mode == "RUNNER" then
            tracker.is_active = false
        end
        return
    end

    local player_pos = get_player_position()
    local target_pos = step.pos

    -- Coordinate Resolution Strategy:
    -- 1. Use Step Coordinates if valid.
    -- 2. If invalid, check NPC Database (Global).
    -- 3. If missing from DB, check Local Screen Actors.

    if not target_pos or (target_pos:x() == 0 and target_pos:y() == 0) then
        if step.target_name then
            -- Check NPC Database first
            local db_pos = npc_manager.get_npc_pos(step.target_name)
            if db_pos then
                target_pos = db_pos
                -- console.print("Found " .. step.target_name .. " in DB.")
            else
                -- Fallback to local search
                local actor = get_actor_by_name(step.target_name)
                if actor then
                    target_pos = actor:get_position()
                else
                    console.print("Step " .. step.index .. ": Waiting for Actor " .. step.target_name)
                    return
                end
            end
        else
             console.print("Step " .. step.index .. ": Invalid Coordinates & No Target Name")
             return
        end
    end

    local dist = player_pos:dist_to_ignore_z(target_pos)
    local threshold = step.range_threshold or 2.0

    if step.type == "Move" then
        if dist > threshold then
            pathfinder.move_to_cpathfinder(target_pos)
        else
            console.print("Step " .. step.index .. " (Move) Complete.")
            tracker.advance_step()
        end

    elseif step.type == "Interact" then
        if dist > threshold then
            pathfinder.move_to_cpathfinder(target_pos)
        else
            local actor = get_actor_by_name(step.target_name)
            if actor then
                -- Use global interaction function as verified
                if loot_manager and loot_manager.interact_with_object then
                    if loot_manager.interact_with_object(actor) then
                        console.print("Interacted with " .. step.target_name)
                        tracker.advance_step()
                    end
                else
                    console.print("Error: loot_manager not available")
                end
            else
                console.print("At location, waiting for spawn: " .. step.target_name)
            end
        end
    end
end

return executor
