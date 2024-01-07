local menubar = require("menubar")

--A bunch of user variables 
--
--==========================================================

terminal = "kitty"
browser = "firefox"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"


--set terminal for applications that need it
menubar.utils.terminal = terminal
