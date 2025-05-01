return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            source = {
                null_ls.builtins.formatting.stylua,         -- Lua
                null_ls.builtins.formatting.clang_format,   -- C/C++
                null_ls.builtins.formatting.black,          -- Python
                null_ls.builtins.formatting.prettier,       -- JavaScript
            }
        })
        vim.keymap.set('n', '<A-F>', vim.lsp.buf.format, {})    -- Alt Shift f
    end
}