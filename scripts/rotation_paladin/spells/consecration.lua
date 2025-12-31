local my_utility = require("my_utility/my_utility")

local consecration_menu_elements =
{
    tree_tab            = tree_node:new(1),
    main_boolean        = checkbox:new(true, get_hash(my_utility.plugin_label .. "consecration_main_boolean")),
}

local function menu()
    if consecration_menu_elements.tree_tab:push("Consecration") then
        consecration_menu_elements.main_boolean:render("Enable Spell", "")
        consecration_menu_elements.tree_tab:pop()
    end
end

local spell_id_consecration = 2283781;
local next_time_allowed_cast = 0.0;

local function logics(target)
    local menu_boolean = consecration_menu_elements.main_boolean:get();
    local is_logic_allowed = my_utility.is_spell_allowed(
                menu_boolean,
                next_time_allowed_cast,
                spell_id_consecration);

    if not is_logic_allowed then
        return false;
    end;

    -- "Use Consecration on bosses or to AFK in hordes"
    -- Check if target is boss or elite, or if surrounded?
    -- For now, simple logic: cast if valid target is close enough (it's self cast usually or ground target?)
    -- spell_data says cast_type = "self".

    if cast_spell.self(spell_id_consecration, 0.0) then
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
