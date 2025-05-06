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
			"ibhagwan/fzf-lua",
			-- optional for icon support
			dependencies = { "nvim-tree/nvim-web-devicons" },
			-- or if using mini.icons/mini.nvim
			-- dependencies = { "echasnovski/mini.icons" },
			opts = {},
		},
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
			"hrsh7th/nvim-cmp",
			version = false, -- last release is way too old
			event = "InsertEnter",
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
			},
			opts = function()
				vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
				local cmp = require("cmp")
				local defaults = require("cmp.config.default")()
				local auto_select = true
				return {
					auto_brackets = {},
					completion = {
						completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
					},
				}
			end,
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
				-- vim.cmd.colorscheme("gruvbox-material")
			end,
		},
		{
			"rose-pine/neovim",
			name = "rose-pine",
			opts = {
				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},

				highlight_groups = {
					-- accented statusline
					StatusLine = { fg = "love", bg = "love", blend = 10 },
					StatusLineNC = { fg = "subtle", bg = "surface" },

					-- leafy search
					CurSearch = { fg = "base", bg = "leaf", inherit = false },
					Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

					-- borderless transparent
					TelescopeBorder = { fg = "overlay", bg = "overlay" },
					TelescopeNormal = { fg = "subtle", bg = "overlay" },
					TelescopeSelection = { fg = "text", bg = "highlight_med" },
					TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
					TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

					TelescopeTitle = { fg = "base", bg = "love" },
					TelescopePromptTitle = { fg = "base", bg = "pine" },
					TelescopePreviewTitle = { fg = "base", bg = "iris" },

					TelescopePromptNormal = { fg = "text", bg = "surface" },
					TelescopePromptBorder = { fg = "surface", bg = "surface" },
				},
			},
		},
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	--install = { colorscheme = { "retrobox" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
