return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        {
            "saghen/blink.compat",
            optional = true,
            version = not vim.g.lazyvim_blink_main and "*",
        },
    },

    version = not vim.g.lazyvim_blink_main and "*",
    build = vim.g.lazyvim_blink_main and "cargo build --release",

    config = function()
        require("blink.cmp").setup({
            keymap = { preset = "super-tab" },
            appearance = { nerd_font_variant = "mono" },

            completion = {
                menu = { border = "rounded" },
                ghost_text = { enabled = true },
                documentation = {
                    window = { border = "rounded" },
                    auto_show = true,
                    auto_show_delay_ms = 200,
                },
            },

            signature = { enabled = true },

            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },

            fuzzy = { implementation = "prefer_rust_with_warning" }
        })

        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
    end,

    opts_extend = { "sources.default" }
}
