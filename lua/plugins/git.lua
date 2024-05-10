return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				on_attach = function(bufnr)
					local gitsigns = require("gitsigns")
					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end

					-- Navigation
					map("n", "]c", function()
						if vim.wo.diff then
							vim.cmd.normal({ "<leader>gn", bang = true })
						else
							gitsigns.nav_hunk("next")
						end
					end)

					map("n", "[c", function()
						if vim.wo.diff then
							vim.cmd.normal({ "<leader>gp", bang = true })
						else
							gitsigns.nav_hunk("prev")
						end
					end)

					-- Actions
					map("n", "<leader>gs", gitsigns.stage_hunk)
					map("n", "<leader>gr", gitsigns.reset_hunk)
					map("v", "<leader>gs", function()
						gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end)
					map("v", "<leader>gr", function()
						gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end)
					map("n", "<leader>gu", gitsigns.undo_stage_hunk)
					map('n', '<leader>gf', gitsigns.stage_buffer)
					map('n', '<leader>gF', gitsigns.reset_buffer)
					map("n", "<leader>gp", gitsigns.preview_hunk)
					map("n", "<leader>gb", gitsigns.toggle_current_line_blame)
					map("n", "<leader>gd", gitsigns.diffthis)
					map("n", "<leader>gdm", function()
						gitsigns.diffthis("main")
					end)
					map("n", "<leader>gds", function()
						gitsigns.diffthis("staging")
					end)
				end,
			})
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
