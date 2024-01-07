local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local gears = require("gears")

local powerbutton = require("ui.bar.powerbutton")
local layoutbox = require("ui.bar.layoutbox")

awful.screen.connect_for_each_screen(function (s)
    awful.tag(
        {'1', '2', '3', '4', '5', '6'},
        s, awful.layout.layouts[1]
    )

local content = wibox.widget {
  {
      {
        --layoutbox(s),
        powerbutton,
        layout = wibox.layout.fixed.vertical,
      },
    top = 5, 
    layout = wibox.layout.fixed.vertical,
  },

  bg = '#0000FF',
  fg = beautiful.fg_normal,
  widget = wibox.container.background,
}

    local bar = awful.popup {
        visible = true,
        ontop = false,
        minimum_height = s.geometry.height - beautiful.useless_gap * 20,
        minimum_width = beautiful.bar_width,
        bg = '#FFFFFF' .. '00',
        fg = beautiful.fg_normal,
        widget = content,
        placement = function (d)
            return awful.placement.left(d, {
                margins = {
                    left = beautiful.useless_gap * 2
                }
            })
        end,
    } 

  bar:struts {
    left = beautiful.bar_width + beautiful.useless_gap * 2
  }

end)


