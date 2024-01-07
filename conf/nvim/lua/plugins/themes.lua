return {
  {
    "catppuccin/nvim", 
    name = "catppuccin",
    enabled = true,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-macchiato" --catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    end
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
       vim.cmd.colorscheme "tokyonight-night" --tokyonight-night tokyonight-storm tokyonight-day tokyonight-moon
    end
  },
}

