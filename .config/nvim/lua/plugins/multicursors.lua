return {
    "mg979/vim-visual-multi",
    branch = "master",  -- Necessary

    init = function ()
        vim.g.VM_default_mappings = 0

        vim.g.VM_maps = {
            ["Find Under"]          = "<C-d>",      -- Select word under cursor and find next match
            ["Add Cursor At Pos"]   = "<A-d>",      -- Add cursor at current position
            ["Skip Region"]         = "q",          -- Skip current match
            ["Remove Region"]       = "Q",          -- Remove the current cursor
        }
    end
}
