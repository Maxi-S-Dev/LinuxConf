return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

  _Gopts = {
    position = "center",
      h1 = "Type",
    }


		alpha.setup(dashboard.opts)
	end,
}
