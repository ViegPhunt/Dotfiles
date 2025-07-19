-- Setup Options Neovim

vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.undofile = true

-- Line numbers
vim.opt.number = true                   -- Display line numbers
vim.opt.numberwidth = 2                 -- Set min number column width

-- Display and UI
vim.opt.cursorline = true               -- Highlight cursor line
vim.opt.fillchars = { eob = " " }       -- Hide '~' on empty buffer lines
vim.opt.wrap = false                    -- Disable wrap line
vim.opt.sidescroll = 1                  -- Scroll 1-char horizontally
vim.opt.sidescrolloff = 5               -- Keep 5-char margin
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"

-- Set tab = 4 space
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Set color
vim.opt.termguicolors = true
