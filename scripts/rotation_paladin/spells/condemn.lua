local my_utility = require("my_utility/my_utility")

local condemn_menu_elements =
{
    tree_tab            = tree_node:new(1),
    main_boolean        = checkbox:new(true, get_hash(my_utility.plugin_label .. "condemn_main_boolean")),
}

local function menu()
    if condemn_menu_elements.tree_tab:push("Condemn") then
        condemn_menu_elements.main_boolean:render("Enable Spell", "")
        condemn_menu_elements.tree_tab:pop()
    end
end

local spell_id_condemn = 2226109;
local next_time_allowed_cast = 0.0;

local function logics()
    local menu_boolean = condemn_menu_elements.main_boolean:get();
    local is_logic_allowed = my_utility.is_spell_allowed(
                menu_boolean,
                next_time_allowed_cast,
                spell_id_condemn);

    if not is_logic_allowed then
        return false;
    end;

    -- Self-centered AoE, used to refresh Arbiter form.
    -- Cast if enemies are nearby (handled by main loop generally calling this if target valid)
    -- or just cast if ready to maintain form.

    if cast_spell.self(spell_id_condemn, 0.0) then
        local current_time = get_time_since_inject();
        next_time_allowed_cast = current_time + 0.2;
        return true;
    end;

    return false;
end

return
{
    menu = menu,
    logics = logics,
}
