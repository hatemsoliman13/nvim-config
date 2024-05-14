return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neotree = require("neo-tree")
		neotree.setup({
			close_if_last_window = true,
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
			},
		})
		vim.keymap.set("n", "<leader>nn", ":Neotree filesystem focus toggle left<CR>", {})
		vim.keymap.set("n", "<leader>nb", ":Neotree buffers focus toggle float<CR>", {})
		vim.keymap.set("n", "<leader>ng", ":Neotree git_status focus toggle float<CR>", {})
	end,
}
