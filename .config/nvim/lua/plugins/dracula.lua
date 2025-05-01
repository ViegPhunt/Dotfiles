return {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    config = function()
        require("dracula").setup({
            transparent_bg = true,    -- Set transparent background
            italic_comment = true,    -- Set italic comment
        })
        vim.cmd.colorscheme "dracula"    -- Set dracula theme
    end
}