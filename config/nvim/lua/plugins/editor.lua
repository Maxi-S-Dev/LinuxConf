return{
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      vim.keymap.set('n', '<leader>fe', ":Neotree filesystem toggle left<CR>")
      vim.keymap.set('n', '<leader>be', ":Neotree buffers toggle left<CR>")
      vim.keymap.set('n', '<leader>ge', ":Neotree git_status toggle left<CR>")
    end
  },
  
  {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader><space>', builtin.find_files, {}) 
    vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
  end
  },

  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
          }
        }
      }
    })
    require("telescope").load_extension("ui-select")
    end
  },
  
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,

    config = function(_, opts)
      local wk = require("which-key")
      wk.register({
        ["]"] = { name = "+next" },
        ["["] = { name = "+prev" },
        ["<leader>c"] = { name = "+code" },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>g"] = { name = "+git" },
        ["<leader>gh"] = { name = "+hunks" },
        ["<leader>s"] = { name = "+search" },
        ["<leader>u"] = { name = "+ui" },
      })
    end,    
  },
}
