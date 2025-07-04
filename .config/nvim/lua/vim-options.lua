-- Setup Neovim
vim.opt.number = true                   -- Display line numbers
vim.opt.cursorline = true               -- Highlight cursor line
vim.opt.fillchars:append { eob = " " }  -- Hide '~' on empty buffer lines
vim.opt.wrap = false                    -- Disable wrap line
vim.opt.sidescroll = 1                  -- Scroll 1-char horizontally
vim.opt.sidescrolloff = 5               -- Keep 5-char margin
-- Set tab = 4 space
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
-- Set color
vim.opt.termguicolors = true
-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Resize pane
vim.keymap.set("n", "<A-=>", "<C-w>+", { desc = "Make Window Taller" })     -- Alt =
vim.keymap.set("n", "<A-->", "<C-w>-", { desc = "Make Window Shorter" })    -- Alt -
vim.keymap.set("n", "<A-,>", "<C-w>>", { desc = "Make Window Wider" })      -- Alt ,
vim.keymap.set("n", "<A-.>", "<C-w><", { desc = "Make Window Narrower" })   -- Alt .
-- Move on pane
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Move To Upper Pane" })        -- Ctrl Up
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Move To Bottom Pane" })     -- Ctrl Down
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Move To Left Pane" })       -- Ctrl Left
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Move To Right Pane" })       -- Ctrl Right
-- Set move line
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>", { desc = "Move Line Up (Normal mode)" })                -- Alt Up
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>", { desc = "Move Line Down (Normal mode)" })            -- Alt Down
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move Line(s) Up (Visual mode)" })       -- Alt Up
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move Line(s) Down (Visual mode)" })   -- Alt Down
-- Indentation
vim.keymap.set("n", "<Tab>", ">>", { noremap = true, silent = true, desc = "Indent Line (Normal mode)" })           -- Tab
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true, desc = "Unindent Line (Normal mode)" })       -- Shift Tab
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true, desc = "Indent Selection (Visual mode)" })     -- Tab
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true, desc = "Unindent Selection (Visual mode)" }) -- Shift Tab
