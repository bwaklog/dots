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

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },
    mapping = {
        ['C-y'] = cmp.mapping.confirm({select=false}),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
        ['<C-p>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item({behaviour='insert'})
            else
                cmp.complete()
            end
        end),
        ['C-n'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item({behaviour='insert'})
            else
                cmp.complete()
            end
        end),
    },
    --snippet = {
    --    expand = function(args)
    --        require('lunasnip').lsp_expand(args.body)
    --    end,
    --},
})
