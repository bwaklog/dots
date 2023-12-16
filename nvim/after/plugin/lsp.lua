local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)


require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		lsp_zero.default_setup,
	},
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	-- Enter key to confirm completion
	-- ['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<Tab>'] = cmp.mapping.confirm({ select = false, insert = true}),

	-- Ctrl + Sapce to trigger completion menu
	['<C-Space>'] = cmp.mapping.complete(),
	
	-- Navigate between snippet palceholder
	['<C-f>'] = cmp_action.luasnip_jump_forward(),
	['<C-b>'] = cmp_action.luasnip_jump_backward(),


	-- Scroll up and down in the completion documentation
	['<C-u>'] = cmp.mapping.scroll_docs(-4),
	['C-d'] = cmp.mapping.scroll_docs(4),
	
})