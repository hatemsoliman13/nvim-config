return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "lua", "php", "phpdoc", "javascript", "typescript", "tsx", "css", "json", "html" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
