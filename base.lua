metadata = {
    name = "Dual UI Example",
    author = "Instinct",
    version = "1.0.1",
    description = "List and Click UI example."
}

local snow = false

local function set_snow(value)
    snow = value
    globals.at(262145):at(4413):set_int(value and 1 or 0)
end

-- List UI

local main = menu.create("Dual UI Example")

main:add_button("Switch to Click UI", function()
    gui.set_click()
end, "Switch to the Click UI.")

main:add_toggle("Toggle Snow", snow, function(enabled)
    set_snow(enabled)
end, "Toggle snow on or off.")

-- Click UI

imgui.render(function()
    if not gui.is_click() then return end

    imgui.set_next_window_size(500, 300, imgui.Cond.FirstUseEver)

    local visible = imgui.begin_window("Dual UI Example", imgui.WindowFlags.NoCollapse)

    if visible then
        imgui.text("Instinct Lua")
        imgui.separator()

        if imgui.button("Switch to List UI", 170, 30) then
            imgui.end_window()
            gui.set_list()
            return
        end

        imgui.separator()

        local value = imgui.checkbox("Toggle Snow", snow)

        if value ~= snow then
            set_snow(value)
        end

        imgui.separator()
        imgui.text("Snow: " .. tostring(snow))
        imgui.text("GUI: " .. gui.type())
    end

    imgui.end_window()
end)


-- Loops
script.run(function()
    while true do
        script.yield(0)
    end
end)

log.info("Dual UI Example loaded.")
