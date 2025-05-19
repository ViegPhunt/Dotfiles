return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            transparent_background = true,    -- Set transparent background
        })
        vim.cmd.colorscheme "catppuccin"    -- Set catppuccin theme
    end
}
