vim.g.mapleader = " "

-- neotree related
vim.keymap.set("n", "<leader>E", function()
    vim.cmd.Neotree('toggle')
end)

-- toggle term
vim.keymap.set("n", "<leader>f/", function() 
    vim.cmd.ToggleTerm('direction=float')
end)
