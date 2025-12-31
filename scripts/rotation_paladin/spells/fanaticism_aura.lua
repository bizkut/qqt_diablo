local my_utility = require("my_utility/my_utility")

local fanaticism_aura_menu_elements =
{
    tree_tab            = tree_node:new(1),
    main_boolean        = checkbox:new(true, get_hash(my_utility.plugin_label .. "fanaticism_aura_main_boolean")),
}

local function menu()
    if fanaticism_aura_menu_elements.tree_tab:push("Fanaticism Aura") then
        fanaticism_aura_menu_elements.main_boolean:render("Enable Spell", "")
        fanaticism_aura_menu_elements.tree_tab:pop()
    end
end

local spell_id_fanaticism_aura = 2187741;
local next_time_allowed_cast = 0.0;

local function logics()
    local menu_boolean = fanaticism_aura_menu_elements.main_boolean:get();
    local is_logic_allowed = my_utility.is_spell_allowed(
                menu_boolean,
                next_time_allowed_cast,
                spell_id_fanaticism_aura);

    if not is_logic_allowed then
        return false;
    end;

    local local_player = get_local_player();

    -- Check if buff is already active
    local buffs = local_player:get_buffs();
    for _, buff in ipairs(buffs) do
        if buff.name_hash == spell_id_fanaticism_aura then
            return false;
        end
    end

    if cast_spell.self(spell_id_fanaticism_aura, 0.0) then
        local current_time = get_time_since_inject();
        next_time_allowed_cast = current_time + 0.5;
        return true;
    end;

    return false;
end

return
{
    menu = menu,
    logics = logics,
}
