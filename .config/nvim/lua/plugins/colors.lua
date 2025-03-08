return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        transparency = true,
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
      vim.g.gruvbox_material_transparent_background = 2
      vim.g.gruvbox_material_dim_inactive_windows = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  { "RRethy/base16-nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "nord",
    },
  },
}
