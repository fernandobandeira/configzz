return {
	{
		"ThePrimeagen/git-worktree.nvim",
		config = function()
			local git_worktree = require("telescope").extensions.git_worktree

			function Switch_worktree()
				git_worktree.git_worktrees()
			end

			function Create_worktree()
				git_worktree.create_git_worktree()
			end

			vim.keymap.set(
				"n",
				"<leader>gws",
				"<cmd>lua Switch_worktree()<CR>",
				{ silent = true, desc = "Switch/Delete worktrees" }
			)
			vim.keymap.set(
				"n",
				"<leader>gww",
				"<cmd>lua Create_worktree()<CR>",
				{ silent = true, desc = "Create worktree" }
			)
		end,
	},
}
