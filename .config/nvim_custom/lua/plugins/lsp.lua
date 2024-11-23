return {
		{ 'mfussenegger/nvim-dap' },
		{ 
				'mhartington/formatter.nvim' 
		},
		{
				"williamboman/mason.nvim",
				config = function()
						require("mason").setup()
				end
		}
}
