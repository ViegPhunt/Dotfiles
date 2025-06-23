return {
    'lukas-reineke/indent-blankline.nvim',
    config = function ()
        require("ibl").setup({
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = {
                enabled = false,
            },
            exclude = {
                filetypes = {
                    "Trouble",
                    "alpha",
                    "dashboard",
                    "help",
                    "lazy",
                    "mason",
                    "neo-tree",
                    "notify",
                    "snacks_dashboard",
                    "snacks_notif",
                    "snacks_terminal",
                    "snacks_win",
                    "toggleterm",
                    "trouble",
                },
            },
        })
    end,
    main = "ibl",
}
