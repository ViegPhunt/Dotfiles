return {
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        config = function()
            require("mason").setup({})

            require("mason-lspconfig").setup({
                -- Lua, C/C++, Python, JavaScript, Java, Html, Css, SQL
                ensure_installed = { "lua_ls", "clangd", "pyright", "ts_ls", "jdtls", "html", "cssls", "sqlls" },
            })

            vim.lsp.config('lua_ls', {
                settings = {
                    Lua = {
                        runtime = { version = 'LuaJIT' },
                        diagnostics = { globals = { 'vim', 'require' } },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = { enable = false },
                    },
                },
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Hover Documentation" })              -- Shift k
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go To Definition" })                -- g d
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Trigger Code Action" })    -- Space c a
        end
    },

    -- Java
    {
        "mfussenegger/nvim-jdtls";
    }
}
