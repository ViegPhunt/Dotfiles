return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,         -- Lua
                null_ls.builtins.formatting.clang_format,   -- C/C++
                null_ls.builtins.formatting.black,          -- Python
                null_ls.builtins.formatting.prettier,       -- JavaScript
            }
        })
        vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = "Format Code" })    -- Space g f
    end
}
