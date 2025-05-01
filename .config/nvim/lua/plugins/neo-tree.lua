return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,            -- Show hidden file
                    hide_dotfiles = false,     -- Show dotfile
                    hide_gitignored = true,    -- Show git ignore file
                },
            },
            window = {
                width = 25, -- Set width window neotree (default 40)
            },
        })
        vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>', {})    -- Ctrl Shift e
    end
}
