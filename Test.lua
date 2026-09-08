
script.name = "Instinct Lua Base"
script.author = "Parker"
script.version = "1.0.0"
script.description = "A clean base for creating Instinct Lua scripts."


-- Script state

local state = {
    enabled = false
}


-- Menu

local main = menu.create("Instinct Lua Base")

main:add_toggle(
    "Enabled",
    state.enabled,
    function(value)
        state.enabled = value
    end,
    "Enable or disable the script."
)

main:add_button(
    "Example Action",
    function()
        log.info("Example action executed.")
    end,
    "Run an example action."
)


-- Tick

events.on("tick", function()
    if not state.enabled then
        return
    end

    -- Script logic goes here.
end)


-- Unload

events.on("unload", function()
    state.enabled = false
end)


log.info(
    string.format(
        "%s v%s loaded.",
        script.name,
        script.version
    )
)
