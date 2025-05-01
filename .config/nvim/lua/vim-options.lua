-- Setup Neovim
vim.opt.number = true       -- Display line numbers
vim.opt.wrap = false        -- Disable wrap line
vim.opt.sidescroll = 1      -- Scroll 1-char horizontally
vim.opt.sidescrolloff = 5   -- Keep 5-char margin
-- Set tab = 4 space
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
-- Set color
vim.opt.termguicolors = true
-- Set move line
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", {})    -- Move line in Visual mode
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", {})      -- Move line in Visual mode
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>", {})          -- Move line in Normal and Insert mode
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>", {})            -- Move line in Normal and Insert mode
-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

