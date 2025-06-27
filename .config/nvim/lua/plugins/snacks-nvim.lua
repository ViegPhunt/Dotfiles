return {
    "folke/snacks.nvim",

    config = function ()
        require("snacks").setup({
            -- Indent
            indent = {
                enabled = true,
                indent = {
                    char = "▏",
                },
                scope = {
                    enabled = false,
                }
            },
        })
    end
}
