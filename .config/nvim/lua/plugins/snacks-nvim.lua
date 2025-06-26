return {
    "folke/snacks.nvim",

    config = function ()
        require("snacks").setup({
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
