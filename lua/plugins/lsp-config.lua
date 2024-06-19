return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "intelephense", "phpactor" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			-- lspconfig.intelephense.setup({ capabilities = capabilities })
			lspconfig.phpactor.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<leader>lca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			vim.keymap.set("n", "<leader>tt", ":TroubleToggle<CR>", {})
		end,
	},
}
