return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = { "italic" },
					keywords = { "italic" },
					types = { "italic" },
				},
				integrations = {
					alpha = true,
					cmp = true,
					leap = true,
					lsp_trouble = true,
					gitsigns = true,
					mason = true,
					noice = true,
					notify = true,
					rainbow_delimiters = true,
					telescope = {
						enabled = true,
					},
					treesitter = true,
					which_key = true,
				},
			})

			vim.cmd([[colorscheme catppuccin-mocha]])
		end,
	},
}
