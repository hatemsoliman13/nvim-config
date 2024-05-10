return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>nn", ":Neotree filesystem focus toggle left<CR>", {})
		vim.keymap.set("n", "<leader>nb", ":Neotree buffers focus toggle float<CR>", {})
		vim.keymap.set("n", "<leader>ng", ":Neotree git_status focus toggle float<CR>", {})
	end,
}
