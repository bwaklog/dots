return {
  -- add gruvbox
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
    },
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main", -- auto, main, moon, or dawn
      styles = {
        bold = true,
        italic = true,
        -- transparency = true,
      },
    },
  },

  {
    "tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "olimorris/onedarkpro.nvim",
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
