return {
	{
		"akinsho/toggleterm.nvim",
		config = function()
			local Terminal = require("toggleterm.terminal").Terminal

			local lg_cmd = "lazygit -w $PWD"

			local lazygit = Terminal:new({
				cmd = lg_cmd,
				count = 5,
				direction = "float",
				float_opts = {
					width = function()
						return vim.o.columns
					end,
					height = function()
						return vim.o.lines
					end,
				},
				-- function to run on opening the terminal
				on_open = function(term)
					vim.cmd("startinsert!")
					vim.api.nvim_buf_set_keymap(
						term.bufnr,
						"n",
						"q",
						"<cmd>close<CR>",
						{ noremap = true, silent = true }
					)
				end,
			})

			function Lazygit_toggle()
				lazygit:toggle()
			end

			vim.keymap.set("n", "<leader>gl", "<cmd>lua Lazygit_toggle()<CR>", { silent = true, desc = "Lazygit" })
		end,
	},
}
