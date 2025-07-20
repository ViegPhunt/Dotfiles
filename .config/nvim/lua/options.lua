local opt = vim.opt

-- Setup Options Neovim --

opt.laststatus = 3
opt.showmode = false
opt.undofile = true

-- Line numbers
opt.number = true                   -- Display line numbers
opt.numberwidth = 2                 -- Set min number column width

-- Display and UI
opt.cursorline = true               -- Highlight cursor line
opt.fillchars = { eob = " " }       -- Hide '~' on empty buffer lines
opt.wrap = false                    -- Disable wrap line
opt.sidescroll = 1                  -- Scroll 1-char horizontally
opt.sidescrolloff = 5               -- Keep 5-char margin
opt.signcolumn = "yes"
opt.winborder = "rounded"

-- Set tab = 4 space
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- Set color
opt.termguicolors = true

-- Sync clipboard between OS and Neovim.
opt.clipboard = "unnamedplus"
