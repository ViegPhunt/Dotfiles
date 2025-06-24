return {
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
        },

        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            
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
                                    diagnostics = {
                                        globals = { "vim" },
                                    },
                                    workspace = {
                                        library = vim.api.nvim_get_runtime_file("", true),
                                        checkThirdParty = false,
                                    },
                                },
                            },
                        })
                    end,
                },
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})                   -- Shift k
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})             -- g d
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})    -- Space c a
        end
    }
}
