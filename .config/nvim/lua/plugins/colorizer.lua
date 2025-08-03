return {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",

    config = function()
        require("colorizer").setup({
            filetypes = { "*" },
            user_default_options = {
                mode = "background",
                names = false,
                css = true,
            },
        })
    end
}
