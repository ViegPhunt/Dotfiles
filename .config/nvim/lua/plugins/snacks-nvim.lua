return {
    "folke/snacks.nvim",

    config = function()
        require("snacks").setup({
            -- Indent
            indent = {
                enabled = true,
                indent = { char = "▏" },
                scope = { enabled = false }
            },

            -- Bigfile
            bigfile = { enabled = true, notify = false },

            -- Quickfile
            quickfile = { enabled = true },
        })
    end
}
