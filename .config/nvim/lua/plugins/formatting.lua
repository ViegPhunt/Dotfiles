return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        config = function()
            require("mason-tool-installer").setup({
                -- Lua, C/C++, Python, JavaScript, HTML, CSS
                ensure_installed = { "stylua", "clang-format", "black", "prettier" },
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
                },
            })

            vim.keymap.set({ "n", "v" }, "<leader>gf", function()
                conform.format({ async = true, lsp_fallback = true })
            end, { desc = "Format Code" }) -- Space g f
        end
    }
}
