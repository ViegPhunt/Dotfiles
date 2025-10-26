return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
                "bash",
                "lua",
                "c",
                "cpp",
                "python",
                "javascript",
                "html",
                "css",
                "markdown",
                "markdown_inline",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
