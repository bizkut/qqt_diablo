local my_utility = require("my_utility/my_utility")

local falling_star_menu_elements =
{
    tree_tab            = tree_node:new(1),
    main_boolean        = checkbox:new(true, get_hash(my_utility.plugin_label .. "falling_star_main_boolean")),
}

local function menu()
    if falling_star_menu_elements.tree_tab:push("Falling Star") then
        falling_star_menu_elements.main_boolean:render("Enable Spell", "")
        falling_star_menu_elements.tree_tab:pop()
    end
end

local spell_id_falling_star = 2106904;
local next_time_allowed_cast = 0.0;

local falling_star_data = spell_data:new(
    4.0,                        -- radius
    10.0,                        -- range
    0.6,                        -- cast_delay
    15.0,                        -- projectile_speed
    false,                      -- has_collision
    spell_id_falling_star,           -- spell_id
    spell_geometry.circular, -- geometry_type
    targeting_type.skillshot    --targeting_type
)

local function logics(target)
    local menu_boolean = falling_star_menu_elements.main_boolean:get();
    local is_logic_allowed = my_utility.is_spell_allowed(
                menu_boolean,
                next_time_allowed_cast,
                spell_id_falling_star);

    if not is_logic_allowed then
        return false;
    end;

    -- Used for mobility or to refresh Arbiter form.
    -- Cast on target if available.

    if cast_spell.target(target, falling_star_data, false) then
        local current_time = get_time_since_inject();
        next_time_allowed_cast = current_time + 0.6;
        return true;
    end;

    return false;
end

return
{
    menu = menu,
    logics = logics,
}
