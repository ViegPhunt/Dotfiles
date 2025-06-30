return {
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
            "saghen/blink.cmp",
        },

        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            require("mason").setup({})

            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "pyright", "ts_ls" },    -- Lua, C/C++, Python, JavaScript
                automatic_installation = true,

                handlers = {
                    function(server_name)
                        lspconfig[server_name].setup({
                            capabilities = capabilities,
                        })
                    end,

                    ["lua_ls"] = function()
                        lspconfig.lua_ls.setup({
                            capabilities = capabilities,
                            settings = {
                                Lua = {
                                    runtime = { version = 'LuaJIT' },
                                    diagnostics = { globals = { "vim" } },
                                    workspace = {
                                        library = vim.api.nvim_get_runtime_file("", true),
                                        checkThirdParty = false,
                                    },
                                    telemetry = { enable = false },
                                },
                            },
                        })
                    end,
                },
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show Hover Documentation" })              -- Shift k
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go To Definition" })                -- g d
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Trigger Code Action" })    -- Space c a
        end
    }
}
