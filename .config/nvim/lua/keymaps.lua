local keymap = vim.keymap.set

-- Setup Keymaps Neovim --

-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Relativenumber toggle
keymap("n", "<leader>rn", ":set relativenumber!<CR>", { desc = "Relativenumber Toggle", silent = true })    -- Space r n

-- General clear highlights
keymap("n", "<Esc>", ":noh<CR>", { desc = "General Clear Highlights", silent = true })

-- Resize pane
keymap("n", "<A-=>", "<C-w>+", { desc = "Make Window Taller" })     -- Alt =
keymap("n", "<A-->", "<C-w>-", { desc = "Make Window Shorter" })    -- Alt -
keymap("n", "<A-,>", "<C-w>>", { desc = "Make Window Wider" })      -- Alt ,
keymap("n", "<A-.>", "<C-w><", { desc = "Make Window Narrower" })   -- Alt .

-- Move on pane
keymap("n", "<C-K>", "<C-w>k", { desc = "Move To Upper Pane" })     -- Ctrl k
keymap("n", "<C-J>", "<C-w>j", { desc = "Move To Bottom Pane" })    -- Ctrl j
keymap("n", "<C-H>", "<C-w>h", { desc = "Move To Left Pane" })      -- Ctrl h
keymap("n", "<C-L>", "<C-w>l", { desc = "Move To Right Pane" })     -- Ctrl l

-- Set move line
keymap("n", "<A-Up>", ":m .-2<CR>", { desc = "Move Line Up (Normal mode)", silent = true })                 -- Alt Up
keymap("n", "<A-Down>", ":m .+1<CR>", { desc = "Move Line Down (Normal mode)", silent = true })             -- Alt Down
keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move Line(s) Up (Visual mode)", silent = true })        -- Alt Up
keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move Line(s) Down (Visual mode)", silent = true })    -- Alt Down

-- Indentation
keymap("n", "<Tab>", ">>", { desc = "Indent Line (Normal mode)" })              -- Tab
keymap("n", "<S-Tab>", "<<", { desc = "Unindent Line (Normal mode)" })          -- Shift Tab
keymap("v", "<Tab>", ">gv", { desc = "Indent Selection (Visual mode)" })        -- Tab
keymap("v", "<S-Tab>", "<gv", { desc = "Unindent Selection (Visual mode)" })    -- Shift Tab
