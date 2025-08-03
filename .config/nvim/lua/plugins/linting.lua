return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        config = function()
            require("mason-tool-installer").setup({
                -- C/C++, Python, JavaScript, HTML, CSS, Java, SQL
                ensure_installed = { "cpplint", "flake8", "eslint", "htmlhint", "stylelint", "checkstyle", "sqlfluff" },
            })
        end
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            local lint = require("lint")
            lint.linters_by_ft = {
                c = { "cpplint" },
                cpp = { "cpplint" },
                python = { "flake8" },
                javascript = { "eslint" },
                html = { "htmlhint" },
                css = { "stylelint" },
                java = { "checkstyle" },
                sql = { "sqlfluff" },
            }

            local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
            vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
                group = lint_augroup,
                callback = function()
                    lint.try_lint()
                end
            })
        end
    }
}
