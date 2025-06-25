return {
    "numToStr/Comment.nvim",
    config = function ()
        require('Comment').setup({})

        -- <C-_> is Ctrl + /
        vim.keymap.set("n", "<C-_>", "gcc", { remap = true }) -- Comment in Normal mode
        vim.keymap.set("v", "<C-_>", "gc", { remap = true })  -- Comment in Visual mode
    end
}
