return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.config")
        config.setup({
            ensure_installed = { "lua", "php", "phpdoc", "javascript", "typescript", "tsx", "css", "json", "html" },
            highlight = { enable = true },
        })
    end,
}
