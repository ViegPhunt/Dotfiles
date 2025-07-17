return {
    "lewis6991/gitsigns.nvim",
    config = function ()
        require("gitsigns").setup({})

        vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {
            desc = "Git Toggle Current Line Blame",
            noremap = true,
            silent = true
        })
    end
}
