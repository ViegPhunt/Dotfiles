return {
    "catgoose/nvim-colorizer.lua",
    config = function ()
        require('colorizer').setup({
            filetypes = { "*" },
            user_default_options = {
                mode = "background",
            },
        })
    end
}
