local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")

local function get_layoutbox(s)
    local layoutbox = awful.widget.layoutbox {
        screen = s,
        forced_height = 14,
        forced_width = 14,
    }

  layoutbox.add_buttons(layoutbox, {
        awful.button({}, 1, function () awful.layout.inc(1) end),
        awful.button({}, 3, function () awful.layout.inc(-1) end),
        awful.button({}, 4, function () awful.layout.inc(-1) end),
        awful.button({}, 5, function () awful.layout.inc(1) end),
    })

    return wibox.widget {
        {
            layoutbox,
            halign = 'center',
            layout = wibox.container.place,
        },
        bottom = 5,
        top = 8,
        left = 2,
        widget = wibox.container.margin,
    }
end

return get_layoutbox
