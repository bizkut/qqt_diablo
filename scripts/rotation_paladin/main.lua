local local_player = get_local_player();
if local_player == nil then
    return
end

local character_id = local_player:get_character_class_id();
local is_paladin = character_id == 9;
if not is_paladin then
 return
end;

local menu = require("menu");

local spells =
{
    holy_light_aura         = require("spells/holy_light_aura"),
    fanaticism_aura         = require("spells/fanaticism_aura"),
    defiance_aura           = require("spells/defiance_aura"),
    arbiter_of_justice      = require("spells/arbiter_of_justice"),
    falling_star            = require("spells/falling_star"),
    condemn                 = require("spells/condemn"),
    consecration            = require("spells/consecration"),
}

on_render_menu (function ()

    if not menu.main_tree:push("Paladin: Auradin") then
        return;
    end;

    menu.main_boolean:render("Enable Plugin", "");

    if menu.main_boolean:get() == false then
        menu.main_tree:pop();
        return;
    end;

    spells.holy_light_aura.menu();
    spells.fanaticism_aura.menu();
    spells.defiance_aura.menu();
    spells.arbiter_of_justice.menu();
    spells.falling_star.menu();
    spells.condemn.menu();
    spells.consecration.menu();

    menu.main_tree:pop();

end)

local can_move = 0.0;
local cast_end_time = 0.0;

local my_utility = require("my_utility/my_utility");
local my_target_selector = require("my_utility/my_target_selector");

on_update(function ()

    local local_player = get_local_player();
    if not local_player then
        return;
    end

    if menu.main_boolean:get() == false then
        -- if plugin is disabled dont do any logic
        return;
    end;

    local current_time = get_time_since_inject()
    if current_time < cast_end_time then
        return;
    end;

    if not my_utility.is_action_allowed() then
        return;
    end

    -- Priority 1: Maintain Auras (Buffs)
    if spells.holy_light_aura.logics() then
        cast_end_time = current_time + 0.2;
        return;
    end
    if spells.fanaticism_aura.logics() then
        cast_end_time = current_time + 0.2;
        return;
    end
    if spells.defiance_aura.logics() then
        cast_end_time = current_time + 0.2;
        return;
    end

    local screen_range = 16.0;
    local player_position = get_player_position();

    local collision_table = { is_enabled = true, width = 1.0 };
    local floor_table = { is_enabled = true, height = 5.0 };
    local angle_table = { is_enabled = false, max_angle = 90.0 };

    local entity_list = my_target_selector.get_target_list(
        player_position,
        screen_range,
        collision_table,
        floor_table,
        angle_table);

    local target_selector_data = my_target_selector.get_target_selector_data(
        player_position,
        entity_list);

    if not target_selector_data.is_valid then
        -- Even if no target, maintain Arbiter form if possible using self-cast skills?
        -- For now, wait for targets.
        return;
    end

    local is_auto_play_active = auto_play.is_active();
    local max_range = 12.0;
    if is_auto_play_active then
        max_range = 12.0;
    end

    local best_target = target_selector_data.closest_unit;

    if target_selector_data.has_elite then
        local unit = target_selector_data.closest_elite;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(player_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end

    if target_selector_data.has_boss then
        local unit = target_selector_data.closest_boss;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(player_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end

    if target_selector_data.has_champion then
        local unit = target_selector_data.closest_champion;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(player_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end

    if not best_target then
        return;
    end

    -- Priority 2: Maintain Arbiter Form / Attack
    -- "Use Arbiter of Justice, Falling Star or Condemn in rotation to remain in Arbiter form."

    if spells.arbiter_of_justice.logics(best_target) then
        cast_end_time = current_time + 1.0;
        return;
    end

    if spells.falling_star.logics(best_target) then
        cast_end_time = current_time + 0.6;
        return;
    end

    if spells.condemn.logics() then
        cast_end_time = current_time + 0.2;
        return;
    end

    -- Priority 3: Consecration on Bosses/Hard Targets
    if (target_selector_data.has_boss or target_selector_data.has_elite) then
         if spells.consecration.logics(best_target) then
            cast_end_time = current_time + 0.2;
            return;
         end
    end

    -- Auto Play Movement (Walking Simulator)
    local move_timer = get_time_since_inject()
    if move_timer < can_move then
        return;
    end;

    local is_auto_play = my_utility.is_auto_play_enabled();
    if is_auto_play then
        local player_position = local_player:get_position();
        local is_dangerous_evade_position = evade.is_dangerous_position(player_position);
        if not is_dangerous_evade_position then
            local closer_target = target_selector.get_target_closer(player_position, 15.0);
            if closer_target then
                local closer_target_position = closer_target:get_position();
                -- Just walk towards them to burn them with Aura
                local move_pos = closer_target_position:get_extended(player_position, 2.0);
                if pathfinder.move_to_cpathfinder(move_pos) then
                    can_move = move_timer + 1.5;
                end
            end
        end
    end

end)

local draw_player_circle = false;

on_render(function ()

    if menu.main_boolean:get() == false then
        return;
    end;

    local local_player = get_local_player();
    if not local_player then
        return;
    end

    local player_position = local_player:get_position();
    local player_screen_position = graphics.w2s(player_position);
    if player_screen_position:is_zero() then
        return;
    end

    if draw_player_circle then
        graphics.circle_3d(player_position, 8, color_white(85), 3.5, 144)
        graphics.circle_3d(player_position, 6, color_white(85), 2.5, 144)
    end

    -- Visuals for targets
    local screen_range = 16.0;
    local entity_list = my_target_selector.get_target_list(
        player_position,
        screen_range,
        { is_enabled = true, width = 1.0 },
        { is_enabled = true, height = 5.0 },
        { is_enabled = false, max_angle = 90.0 });

    local target_selector_data = my_target_selector.get_target_selector_data(player_position, entity_list);

    if target_selector_data.is_valid then
        local best_target = target_selector_data.closest_unit;
        -- (Boss/Elite override logic omitted for brevity in render, matching main logic usually preferred)

        if best_target and best_target:is_enemy() then
            local glow_target_position = best_target:get_position();
            local glow_target_position_2d = graphics.w2s(glow_target_position);
            graphics.line(glow_target_position_2d, player_screen_position, color_red(180), 2.5)
            graphics.circle_3d(glow_target_position, 0.80, color_red(200), 2.0);
        end
    end

end);

console.print("Lua Plugin - Paladin Auradin - Version 1.0");
