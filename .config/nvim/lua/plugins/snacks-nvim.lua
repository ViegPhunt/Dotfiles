return {
    "folke/snacks.nvim",

    config = function ()
        require("snacks").setup({
            -- Indent
            indent = {
                enabled = true,
                indent = { char = "▏" },
                scope = { enabled = false }
            },

            -- Scroll
            scroll = { enabled = true },

            -- Bigfile
            bigfile = { enabled = true, notify = false },

            -- Quickfile
            quickfile = { enabled = true },

            -- Input
            input = {
                enabled = true,
                win = {
                    row = math.floor((vim.o.lines - 1) / 3),
                    col = math.floor((vim.o.columns - 60) / 2),
                },
            },
        })
    end
}
