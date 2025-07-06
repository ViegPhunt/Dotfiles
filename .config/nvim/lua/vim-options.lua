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
-- Relativenumber toggle
vim.keymap.set("n", "<leader>rn", ":set relativenumber!<CR>", { noremap = true, desc = "Relativenumber Toggle", silent = true })    -- Space r n
-- Resize pane
vim.keymap.set("n", "<A-=>", "<C-w>+", { noremap = true, desc = "Make Window Taller" })     -- Alt =
vim.keymap.set("n", "<A-->", "<C-w>-", { noremap = true, desc = "Make Window Shorter" })    -- Alt -
vim.keymap.set("n", "<A-,>", "<C-w>>", { noremap = true, desc = "Make Window Wider" })      -- Alt ,
vim.keymap.set("n", "<A-.>", "<C-w><", { noremap = true, desc = "Make Window Narrower" })   -- Alt .
-- Move on pane
vim.keymap.set("n", "<C-Up>", "<C-w>k", { noremap = true, desc = "Move To Upper Pane" })        -- Ctrl Up
vim.keymap.set("n", "<C-Down>", "<C-w>j", { noremap = true, desc = "Move To Bottom Pane" })     -- Ctrl Down
vim.keymap.set("n", "<C-Left>", "<C-w>h", { noremap = true, desc = "Move To Left Pane" })       -- Ctrl Left
vim.keymap.set("n", "<C-Right>", "<C-w>l", { noremap = true, desc = "Move To Right Pane" })     -- Ctrl Right
-- Set move line
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>", { noremap = true, desc = "Move Line Up (Normal mode)", silent = true })                -- Alt Up
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>", { noremap = true, desc = "Move Line Down (Normal mode)", silent = true })            -- Alt Down
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, desc = "Move Line(s) Up (Visual mode)", silent = true })       -- Alt Up
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, desc = "Move Line(s) Down (Visual mode)", silent = true })   -- Alt Down
-- Indentation
vim.keymap.set("n", "<Tab>", ">>", { noremap = true, desc = "Indent Line (Normal mode)" })              -- Tab
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, desc = "Unindent Line (Normal mode)" })          -- Shift Tab
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, desc = "Indent Selection (Visual mode)" })        -- Tab
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, desc = "Unindent Selection (Visual mode)" })    -- Shift Tab
