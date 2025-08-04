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
                -- Lua, C/C++, Python, JavaScript, HTML, CSS, Java, SQL
                ensure_installed = { "lua_ls", "clangd", "pyright", "ts_ls", "html", "cssls", "jdtls", "sqlls" },
                automatic_enable = true
            })

            vim.lsp.config("*", { capabilities = vim.lsp.protocol.make_client_capabilities() })
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim", "require" } },
                        workspace = { checkThirdParty = false },
                        telemetry = { enable = false },
                    },
                },
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = event.buf, desc = "Show Hover Documentation" })              -- Shift k
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = event.buf, desc = "Go To Definition" })                -- g d
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = event.buf, desc = "Trigger Code Action" })    -- Space c a
                end,
            })
        end
    },

    -- Java
    { "mfussenegger/nvim-jdtls" }
}
