function toggle_term_float()
	vim.cmd(':ToggleTerm direction=float')
end

function toggle_term_horizontal()
    vim.cmd(':ToggleTerm direction=horizontal')
end

vim.api.nvim_set_keymap('n', '<space>tf', '<cmd>lua toggle_term_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>th', '<cmd>lua toggle_term_horizontal()<CR>', { noremap = true, silent = true })
