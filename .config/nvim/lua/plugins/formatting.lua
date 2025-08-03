return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        config = function()
            require("mason-tool-installer").setup({
                -- Lua, C/C++, Python, JavaScript, HTML, CSS, Java, SQL
                ensure_installed = { "stylua", "clang-format", "black", "prettier", "google-java-format", "sql-formatter" },
            })
        end
    },

    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            local conform = require("conform")
            conform.setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    c = { "clang_format" },
                    cpp = { "clang_format" },
                    python = { "black" },
                    javascript = { "prettier" },
                    html = { "prettier" },
                    css = { "prettier" },
                    java = { "google_java_format" },
                    sql = { "sql_formatter" },
                },
            })

            vim.keymap.set({ "n", "v" }, "<leader>gf", function()
                conform.format({ async = true, lsp_fallback = true })
            end, { desc = "Format Code" }) -- Space g f
        end
    }
}
