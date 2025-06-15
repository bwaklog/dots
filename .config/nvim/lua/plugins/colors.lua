return {
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

  {
    "shaunsingh/nord.nvim",
    config = function()
      vim.g.nord_disable_background = true
      vim.g.nord_cursorline_transparent = true
      vim.g.nord_borders = true
      vim.g.nord_contrast = false
    end,
  },

  { "Verf/deepwhite.nvim" },

  { "arzg/vim-colors-xcode" },

  -- {
  --   "zenbones-theme/zenbones.nvim",
  --   dependencies = "rktjmp/lush.nvim",
  -- },

  {
    "rebelot/kanagawa.nvim",
    config = function()
      -- require("kanagawa").setup({
      --   dimInactive = true,
      --   colors = {
      --     theme = { all = { ui = { bg_gutter = "none" } } },
      --   },
      --   transparent = true,
      -- })
      -- if vim.o.background == "light" then
      --   vim.cmd.colorscheme("kanagawa-wave")
      -- else
      --   vim.cmd.colorscheme("kanagawa-dragon")
      -- end
    end,
  },

  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_dim_inactive_windows = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- example lazy.nvim install setup
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      tweak_ui = {
        disable_undercurl = false,
      },
      tweak_background = {
        normal = "none", -- main background
        -- normal = 'none',    -- transparent
        -- normal = '#a1b2c3',    -- hexcode
        -- normal = color.green,    -- lackluster color
        telescope = "none", -- telescope
        menu = "none", -- nvim_cmp, wildmenu ... (bad idea to transparent)
        popup = "none",
      },
    },

    init = function()
      -- vim.cmd.colorscheme("lackluster")
      -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
      -- vim.cmd.colorscheme("lackluster-mint")
    end,
  },

  { "RRethy/base16-nvim" },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        dim_inactive = {
          enabled = true,
          shade = "dark",
          percentage = 0.15,
          transparent_background = true,
        },
      })
    end,
  },

  {
    "vague2k/vague.nvim",
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require("vague").setup({
        transparent = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      -- colorscheme = "vague",
      -- colorscheme = "rose-pine",
    },
  },
}
