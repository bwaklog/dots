-- ///////////////////////////////
-- CONFIG: General Configuratio
-- ///////////////////////////////

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
-- vim.cmd.colorscheme("lackluster-min")

vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- ///////////////////////////////
-- CONFIG: LSP Configuratio
-- ///////////////////////////////

-- auto completion
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})

vim.o.winborder = "rounded"

-- virtual line diagnostics
vim.diagnostic.config({ virtual_lines = true })

-- lsp config per language
require("lspconfig").lua_ls.setup({
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if
				path ~= vim.fn.stdpath("config")
				and (vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc"))
			then
				return
			end
		end

		client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
			runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
					-- Depending on the usage, you might want to add additional paths here.
					-- "${3rd}/luv/library"
					-- "${3rd}/busted/library",
				},
				-- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
				-- library = vim.api.nvim_get_runtime_file("", true)
			},
		})
	end,
	settings = {
		Lua = {},
	},
})

require("lspconfig").rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = false,
			},
		},
	},
})

require("lspconfig").gopls.setup({})

require("lspconfig").clangd.setup({})

-- ///////////////////////////////
-- CONFIG: lazy.nvim
-- ///////////////////////////////

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- ///////////////////////////////
		-- LAZY: general plugin
		-- ///////////////////////////////

		{
			"folke/which-key.nvim",
			event = "VeryLazy",
			opts = {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			},
			keys = {
				{
					"<leader>?",
					function()
						require("which-key").show({ global = false })
					end,
					desc = "Buffer Local Keymaps (which-key)",
				},
			},
		},

		{
			"epwalsh/obsidian.nvim",
			version = "*", -- recommended, use latest release instead of latest commit
			lazy = true,
			ft = "markdown",
			-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
			-- event = {
			--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
			--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
			--   -- refer to `:h file-pattern` for more examples
			--   "BufReadPre path/to/my-vault/*.md",
			--   "BufNewFile path/to/my-vault/*.md",
			-- },
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
			opts = {
				workspaces = {
					{
						name = "waffle",
						path = "/Users/grogu/Library/Mobile Documents/iCloud~md~obsidian/Documents/Waffles",
					},
				},
			},
		},

		{
			"stevearc/oil.nvim",
			---@module 'oil'
			---@type oil.SetupOpts
			opts = {},
			-- Optional dependencies
			dependencies = { { "echasnovski/mini.icons", opts = {} } },
			-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
			config = function()
				vim.keymap.set("n", "<leader>E", function()
					require("oil").open_float(".")
				end)
				require("oil").setup({})
			end,
		},

		{
			"ojroques/nvim-osc52",
			config = function()
				require("osc52").setup({
					max_length = 0, -- Maximum length of selection (0 for no limit)
					silent = false, -- Disable message on successful copy
					trim = false, -- Trim surrounding whitespaces before copy
				})
				local function copy()
					if (vim.v.event.operator == "y" or vim.v.event.operator == "d") and vim.v.event.regname == "" then
						require("osc52").copy_register("")
					end
				end
				vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
			end,
		},

		{
			"NeogitOrg/neogit",
			dependencies = {
				"nvim-lua/plenary.nvim", -- required
				"sindrets/diffview.nvim", -- optional - Diff integration

				-- Only one of these is needed.
				"nvim-telescope/telescope.nvim", -- optional
				"ibhagwan/fzf-lua", -- optional
				"echasnovski/mini.pick", -- optional
			},
			config = true,
		},

		-- LAZY: themes

		{
			"sainnhe/gruvbox-material",
			lazy = false,
			priority = 1000,
			config = function()
				vim.g.gruvbox_material_transparent_background = 2
				vim.g.gruvbox_material_dim_inactive_windows = 1
				vim.g.gruvbox_material_enable_bold = 1
				vim.g.gruvbox_material_background = "hard"
				vim.g.gruvbox_material_enable_italic = true
				vim.cmd.colorscheme("gruvbox-material")
			end,
		},

		{
			"slugbyte/lackluster.nvim",
			lazy = false,
			priority = 1000,
			init = function()
				-- vim.cmd.colorscheme("lackluster")
				-- vim.cmd.colorscheme("lackluster-hack") -- my favorite
				-- vim.cmd.colorscheme("lackluster-mint")
			end,
		},
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	--install = { colorscheme = { "retrobox" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
