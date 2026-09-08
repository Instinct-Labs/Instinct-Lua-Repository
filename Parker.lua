-- Parker Lua

script.name = "Parker"
script.author = "Parker"
script.version = "1.0.0"
script.description = "Freemode features and utilities."

local main = menu.create("Parker")

main:add_toggle("Toggle Snow", false, function(enabled)
    globals.at(262145):at(4413):set_int(enabled and 1 or 0)
end, "Toggle snow on or off.")

notify.success("Parker", "Parker Lua loaded.")
