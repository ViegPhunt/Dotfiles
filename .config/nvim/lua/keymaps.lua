-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Relativenumber toggle
vim.keymap.set("n", "<leader>rn", ":set relativenumber!<CR>", { desc = "Relativenumber Toggle", noremap = true, silent = true })    -- Space r n
-- Resize pane
vim.keymap.set("n", "<A-=>", "<C-w>+", { desc = "Make Window Taller", noremap = true })     -- Alt =
vim.keymap.set("n", "<A-->", "<C-w>-", { desc = "Make Window Shorter", noremap = true })    -- Alt -
vim.keymap.set("n", "<A-,>", "<C-w>>", { desc = "Make Window Wider", noremap = true })      -- Alt ,
vim.keymap.set("n", "<A-.>", "<C-w><", { desc = "Make Window Narrower", noremap = true })   -- Alt .
-- Move on pane
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Move To Upper Pane", noremap = true })        -- Ctrl Up
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Move To Bottom Pane", noremap = true })     -- Ctrl Down
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Move To Left Pane", noremap = true })       -- Ctrl Left
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Move To Right Pane", noremap = true })     -- Ctrl Right
-- Set move line
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>", { desc = "Move Line Up (Normal mode)", noremap = true, silent = true })                 -- Alt Up
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>", { desc = "Move Line Down (Normal mode)", noremap = true, silent = true })             -- Alt Down
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move Line(s) Up (Visual mode)", noremap = true, silent = true })        -- Alt Up
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move Line(s) Down (Visual mode)", noremap = true, silent = true })    -- Alt Down
-- Indentation
vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent Line (Normal mode)", noremap = true })              -- Tab
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Unindent Line (Normal mode)", noremap = true })          -- Shift Tab
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent Selection (Visual mode)", noremap = true })        -- Tab
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent Selection (Visual mode)", noremap = true })    -- Shift Tab
