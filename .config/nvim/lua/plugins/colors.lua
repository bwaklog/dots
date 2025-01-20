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

  { "shaunsingh/nord.nvim" },

  { "Verf/deepwhite.nvim" },

  { "arzg/vim-colors-xcode" },

  -- {
  --   "zenbones-theme/zenbones.nvim",
  --   dependencies = "rktjmp/lush.nvim",
  -- },

  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        dimInactive = true,
        colors = {
          theme = { all = { ui = { bg_gutter = "none" } } },
        },
        -- transparent = true,
      })
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },

  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.g.gruvbox_material_transparent_background = 2
      vim.g.gruvbox_material_dim_inactive_windows = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-wave",
    },
  },
}
