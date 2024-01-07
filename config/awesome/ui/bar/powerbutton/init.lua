local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")


local powerbutton = wibox.widget {
  text = '⏻',
  --text = '⏼',
  font=beautiful.nerd_font .. ' 12',
  --font = beautiful.nerd_font .. ' 16',
  forced_widht = beautiful.bar_width,
  widget = wibox.widget.textbox,
}

powerbutton:connect_signal("button::press", function()
  awesome.emit_signal('powermenu::toggle')
  end
)


return wibox.widget {
  powerbutton,
  layout = wibox.container.place,

}
