local my_utility = require("my_utility/my_utility")

local arbiter_of_justice_menu_elements =
{
    tree_tab            = tree_node:new(1),
    main_boolean        = checkbox:new(true, get_hash(my_utility.plugin_label .. "arbiter_of_justice_main_boolean")),
}

local function menu()
    if arbiter_of_justice_menu_elements.tree_tab:push("Arbiter of Justice") then
        arbiter_of_justice_menu_elements.main_boolean:render("Enable Spell", "")
        arbiter_of_justice_menu_elements.tree_tab:pop()
    end
end

local spell_id_arbiter_of_justice = 2297125;
local next_time_allowed_cast = 0.0;

local arbiter_spell_data = spell_data:new(
    5.0,                        -- radius
    12.0,                        -- range
    1.0,                        -- cast_delay
    15.0,                        -- projectile_speed
    false,                      -- has_collision
    spell_id_arbiter_of_justice,           -- spell_id
    spell_geometry.circular, -- geometry_type
    targeting_type.skillshot    --targeting_type
)

local function logics(target)
    local menu_boolean = arbiter_of_justice_menu_elements.main_boolean:get();
    local is_logic_allowed = my_utility.is_spell_allowed(
                menu_boolean,
                next_time_allowed_cast,
                spell_id_arbiter_of_justice);

    if not is_logic_allowed then
        return false;
    end;

    -- The guide says: "Use Arbiter of Justice, Falling Star or Condemn in rotation to remain in Arbiter form."
    -- It can be used as an opener or when form drops.
    -- For simplicity, if we have a target and it's ready, use it to transform/refresh.

    if cast_spell.target(target, arbiter_spell_data, false) then
        local current_time = get_time_since_inject();
        next_time_allowed_cast = current_time + 1.0;
        return true;
    end;

    return false;
end

return
{
    menu = menu,
    logics = logics,
}
