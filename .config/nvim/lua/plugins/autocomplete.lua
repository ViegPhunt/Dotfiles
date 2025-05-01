return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-u>'] = cmp.mapping.scroll_docs(-4),    -- Ctrl u
                    ['<C-d>'] = cmp.mapping.scroll_docs(4),     -- Ctrl d
                    ['<C-Space>'] = cmp.mapping.complete(),     -- Ctrl Space
                    ['<C-e>'] = cmp.mapping.abort(),            -- Ctrl e
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }, {
                    { name = 'buffer' },
                }),
            })
        end
    }
}