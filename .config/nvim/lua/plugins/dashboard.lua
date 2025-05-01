return {
    "nvimdev/dashboard-nvim",
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}},
    config = function()
        require('dashboard').setup({
            theme = 'doom',
            config = {
                -- header = { "VIET-VIM" },
                header = {
                    '',
                    '',
                    '',
                    '██╗   ██╗██╗███████╗████████╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
                    '██║   ██║██║██╔════╝╚══██╔══╝   ████╗  ██║██║   ██║██║████╗ ████║',
                    '██║   ██║██║█████╗     ██║█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║',
                    '╚██╗ ██╔╝██║██╔══╝     ██║╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
                    ' ╚████╔╝ ██║███████╗   ██║      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
                    '  ╚═══╝  ╚═╝╚══════╝   ╚═╝      ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
                    ' Have a great time with Viet-Nvim!!!',
                    '',
                    '',
                },
                center = {
                    {
                        icon = '  ',
                        icon_hl = 'Title',
                        desc = 'New File               ',
                        desc_hl = 'String',
                        key = 'n',
                        action = 'lua vim.cmd("ene")'
                    },
                    {
                        icon = '  ',
                        icon_hl = 'Title',
                        desc = 'Find File               ',
                        desc_hl = 'String',
                        key = 'f',
                        action = 'lua vim.cmd("silent Telescope find_files hidden=true no_ignore=true")'
                    },
                    {
                        icon = '  ',
                        icon_hl = 'Title',
                        desc = 'Find Text               ',
                        desc_hl = 'String',
                        key = 't',
                        action = 'lua vim.cmd("Telescope live_grep")'
                    },
                    {
                        icon = '  ',
                        icon_hl = 'Title',
                        desc = 'Settings               ',
                        desc_hl = 'String',
                        key = 's',
                        action = 'lua vim.cmd("e ~/.config/nvim/init.lua")'
                    },
                    {
                        icon = '  ',
                        icon_hl = 'Title',
                        desc = 'Update Plugins               ',
                        desc_hl = 'String',
                        key = 'u',
                        action = 'lua vim.cmd("Lazy update")'
                    },
                    {
                        icon = '󰒲  ',
                        icon_hl = 'Title',
                        desc = 'Lazy               ',
                        desc_hl = 'String',
                        key = 'l',
                        action = 'lua vim.cmd("Lazy")'
                    },
                    {
                        icon = '⏻  ',
                        icon_hl = 'Title',
                        desc = 'Quit               ',
                        desc_hl = 'String',
                        key = 'q',
                        action = 'lua vim.cmd("qa")'
                    },
                },
                footer = {
                    "",
                    "  GitHub: https://github.com/vietpq685",
                },
            }
        })
    end
}