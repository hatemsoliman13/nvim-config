return {
	"nvimtools/none-ls.nvim",
	dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.phpcsfixer,
				null_ls.builtins.diagnostics.phpstan,
				require("none-ls.diagnostics.eslint_d"),
			},
		})
		vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, {})
	end,
}
