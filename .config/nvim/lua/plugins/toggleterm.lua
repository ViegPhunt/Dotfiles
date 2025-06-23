return {
    'akinsho/toggleterm.nvim',
    config = function ()
        require("toggleterm").setup({
            start_in_insert = false
        })
        vim.keymap.set('n', '<leader>`', ':ToggleTerm size=10 direction=horizontal<CR>', {})    -- Space + ` to open terminal
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {})
    end
}
