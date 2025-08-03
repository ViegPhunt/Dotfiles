return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting

        null_ls.setup({
            sources = {
                formatting.stylua,              -- Lua
                formatting.clang_format,        -- C/C++
                formatting.black,               -- Python
                formatting.prettier,            -- JavaScript, HTML, CSS
                formatting.google_java_format,  -- Java
                formatting.sql_formatter,       -- SQL
            }
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format Code" })    -- Space g f
    end
}
