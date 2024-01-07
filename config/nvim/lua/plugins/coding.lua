return {
  --more completion
  {'hrsh7th/cmp-nvim-lsp'},
  --snippets
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "saadparwaiz1/cmp_luasnip", "rafamadriz/friendly-snippets" },
	},

	--Formatting and Linting
	{
		"nvimtools/none-ls.nvim",

		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					--lua
					null_ls.builtins.formatting.stylua,
				},
			})

			vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
		end,
	},

	--autocompletions
	{
		"hrsh7th/nvim-cmp",

		config = function()
			local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
          { name = 'nvim_lsp' },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
