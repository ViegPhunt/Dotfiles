return {
    "numToStr/Comment.nvim",
    config = function ()
        require('Comment').setup({
            padding = true,
            sticky = true,
            ignore = "^$",
            mapping = {
                basic = true,
                extra = true,
            },
        })

        -- <C-_> is Ctrl + /
        vim.keymap.set("n", "<leader>/", "gcc", { remap = true }) -- Comment in Normal mode
        vim.keymap.set("v", "<leader>/", "gc", { remap = true })  -- Comment in Visual mode
    end
}
