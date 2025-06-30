return {
    'echasnovski/mini.nvim',
    config = function ()
        require('mini.pairs').setup({})

        require('mini.comment').setup({
            ignore_blank_line = true,
        })
        -- <C-_> is Ctrl + /
        vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "Toggle Comment (Normal mode)" })    -- Space /
        vim.keymap.set("v", "<leader>/", "gc", { remap = true, desc = "Toggle Comment (Visual mode)" })     -- Space /
    end
}
