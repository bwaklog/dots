print("no...its necessary")

vim.keymap.set("n", "<space>E", "<cmd>Ex<CR>")

-- highlighting a yanked section
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
