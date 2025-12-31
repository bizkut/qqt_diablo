local tracker = require("scripts.auto_quester.tracker")
local executor = require("scripts.auto_quester.executor")
local recorder = require("scripts.auto_quester.recorder")
local quests = require("scripts.auto_quester.quest_db")

local menu_elements = {
    main_tree = tree_node:new(0),
    enable_plugin = checkbox:new(false, get_hash("auto_quester_enable")),
    mode_selector = combo_box:new(0, get_hash("auto_quester_mode")),
    quest_selector = combo_box:new(0, get_hash("auto_quester_quest_sel")),
    refresh_btn = button:new(get_hash("auto_quester_refresh_btn")),

    -- Recorder Controls
    rec_record_btn = button:new(get_hash("auto_quester_rec_btn")),
    rec_next_btn = button:new(get_hash("auto_quester_next_btn")),
    rec_prev_btn = button:new(get_hash("auto_quester_prev_btn")),
    rec_save_btn = button:new(get_hash("auto_quester_save_btn")),
    rec_type_move = button:new(get_hash("auto_quester_type_move")),
    rec_type_interact = button:new(get_hash("auto_quester_type_interact")),

    -- Status
    status_label = "Idle"
}

local quest_list = {}
local quest_keys = {}

local function refresh_quest_list()
    -- Reload the quest database from file (if updated)
    -- Since Lua caches `require`, we might need to manually reload `quest_db` or just re-read the variable.
    -- Assuming `quest_db` is the live table:

    -- If we saved new files, `quest_db` logic to load 'my_recorded_quests' only ran on first require.
    -- To properly refresh, we should re-run the merge logic.

    local status, my_quests = pcall(require, "scripts.auto_quester.my_recorded_quests")
    if status and my_quests then
        -- Force package reload hack? No, safe way: just merge again.
        -- Actually, `require` is cached. To reload:
        package.loaded["scripts.auto_quester.my_recorded_quests"] = nil
        status, my_quests = pcall(require, "scripts.auto_quester.my_recorded_quests")
        if status and my_quests then
            for k, v in pairs(my_quests) do
                quests[k] = v
            end
        end
    end

    quest_list = {}
    quest_keys = {}
    for k, _ in pairs(quests) do
        table.insert(quest_keys, k)
        table.insert(quest_list, k)
    end
    console.print("Quest list refreshed.")
end

-- Init list
refresh_quest_list()

on_render_menu(function()
    if menu_elements.main_tree:push("Auto Quester") then
        menu_elements.enable_plugin:render("Enable Plugin", "Toggle to enable or disable the quester.")

        if menu_elements.enable_plugin:get() then
            tracker.is_active = true
        else
            tracker.is_active = false
        end

        local modes = {"RUNNER", "RECORDER", "AUTO_RECORDER"}
        menu_elements.mode_selector:render("Mode", modes, "Select mode.")
        tracker.mode = modes[menu_elements.mode_selector:get() + 1]

        if tracker.mode ~= "AUTO_RECORDER" then
             menu_elements.quest_selector:render("Select Quest", quest_list, "Choose which quest to run or record.")

             menu_elements.refresh_btn:render("Refresh List", "Reload quest list from file.", 0.1)
             if menu_elements.refresh_btn:get() then
                 refresh_quest_list()
             end

            local selected_quest = quest_keys[menu_elements.quest_selector:get() + 1]

            if selected_quest and selected_quest ~= tracker.current_quest_name then
                tracker.set_quest(selected_quest)
            end
        else
            graphics.text_2d("Mode: Auto-Recorder (Passive)", vec2:new(10, 300), 20, color_white(255))
            graphics.text_2d("Will auto-record new quests.", vec2:new(10, 320), 20, color_white(255))
        end

        if tracker.mode == "RECORDER" then
            menu_elements.rec_record_btn:render("Record Pos", "Save current player position to current step.", 0.1)
            if menu_elements.rec_record_btn:get() then
                recorder.record_current_step_pos()
            end

            menu_elements.rec_type_move:render("Set Type: Move", "Set current step type to Move", 0.1)
            if menu_elements.rec_type_move:get() then
                recorder.set_step_type("Move")
            end

            menu_elements.rec_type_interact:render("Set Type: Interact", "Set current step type to Interact", 0.1)
            if menu_elements.rec_type_interact:get() then
                recorder.set_step_type("Interact")
            end

            if menu_elements.main_tree:push("Navigation") then
                menu_elements.rec_prev_btn:render("Previous Step", "Go to previous step", 0.1)
                if menu_elements.rec_prev_btn:get() then
                    tracker.set_step_index(math.max(1, tracker.current_step_index - 1))
                end

                menu_elements.rec_next_btn:render("Next Step", "Go to next step", 0.1)
                if menu_elements.rec_next_btn:get() then
                    tracker.advance_step()
                end
                menu_elements.main_tree:pop()
            end

            menu_elements.rec_save_btn:render("Save to File", "Save recorded steps to scripts/auto_quester/my_recorded_quests.lua", 0.1)
            if menu_elements.rec_save_btn:get() then
                recorder.save_to_file()
                refresh_quest_list() -- Auto refresh after save
            end

            local quest = quests[tracker.current_quest_name]
            if quest and quest.steps[tracker.current_step_index] then
                local s = quest.steps[tracker.current_step_index]
                graphics.text_2d("Current Step: " .. s.index, vec2:new(10, 300), 20, color_white(255))
                graphics.text_2d("Desc: " .. s.description, vec2:new(10, 320), 20, color_white(255))
                graphics.text_2d("Type: " .. s.type, vec2:new(10, 340), 20, color_white(255))
            end
        end

        menu_elements.main_tree:pop()
    end
end)

on_update(function()
    if not tracker.is_active then return end

    if tracker.mode == "RUNNER" then
        executor.execute_step()
    elseif tracker.mode == "AUTO_RECORDER" then
        tracker.update_quest_list() -- Poll for new quests
        recorder.tick() -- Record path
    end
end)

on_render(function()
    if tracker.is_active and tracker.mode == "RUNNER" then
        local quest = quests[tracker.current_quest_name]
        if quest then
            local step = quest.steps[tracker.current_step_index]
            if step and step.pos and (step.pos:x() ~= 0) then
                graphics.line_3d(get_player_position(), step.pos, color_white(255), 2.0)
                graphics.circle_3d(step.pos, 1.0, color_gold(255), 2.0)
            end
        end
    end
end)
