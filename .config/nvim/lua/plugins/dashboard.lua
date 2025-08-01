return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
        require("dashboard").setup({
            theme = "doom",
            config = {
                header = {
                    "",
                    "",
                    "",
                    "██╗   ██╗██╗███████╗████████╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
                    "██║   ██║██║██╔════╝╚══██╔══╝   ████╗  ██║██║   ██║██║████╗ ████║",
                    "██║   ██║██║█████╗     ██║█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║",
                    "╚██╗ ██╔╝██║██╔══╝     ██║╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
                    " ╚████╔╝ ██║███████╗   ██║      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
                    "  ╚═══╝  ╚═╝╚══════╝   ╚═╝      ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
                    "",
                    "",
                },
                center = {
                    {
                        icon = "  ",
                        icon_hl = "Title",
                        desc = "New File               ",
                        desc_hl = "String",
                        key = "n",
                        action = ":ene"
                    },
                    {
                        icon = "  ",
                        icon_hl = "Title",
                        desc = "Find File               ",
                        desc_hl = "String",
                        key = "f",
                        action = ":Telescope find_files hidden=true no_ignore=true"
                    },
                    {
                        icon = "  ",
                        icon_hl = "Title",
                        desc = "Find Text               ",
                        desc_hl = "String",
                        key = "t",
                        action = ":Telescope live_grep"
                    },
                    {
                        icon = "  ",
                        icon_hl = "Title",
                        desc = "Update Plugins               ",
                        desc_hl = "String",
                        key = "u",
                        action = ":Lazy update"
                    },
                    {
                        icon = "󰒲  ",
                        icon_hl = "Title",
                        desc = "Lazy               ",
                        desc_hl = "String",
                        key = "l",
                        action = ":Lazy"
                    },
                    {
                        icon = "⏻  ",
                        icon_hl = "Title",
                        desc = "Quit               ",
                        desc_hl = "String",
                        key = "q",
                        action = ":qa"
                    },
                },
                footer = {
                    "",
                    " Have a great time with Viet-Nvim!!!",
                },
            }
        })
    end
}
