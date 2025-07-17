-- Setup Neovim
vim.opt.number = true                   -- Display line numbers
vim.opt.cursorline = true               -- Highlight cursor line
vim.opt.fillchars:append { eob = " " }  -- Hide '~' on empty buffer lines
vim.opt.wrap = false                    -- Disable wrap line
vim.opt.sidescroll = 1                  -- Scroll 1-char horizontally
vim.opt.sidescrolloff = 5               -- Keep 5-char margin
vim.opt.winborder = "rounded"
vim.opt.signcolumn = "yes"
-- Set tab = 4 space
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- Set color
vim.opt.termguicolors = true
