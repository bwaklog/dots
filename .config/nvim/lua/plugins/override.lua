return {
  {
    "folke/noice.nvim",
    opts = {
      notify = {
        enabled = false,
      },
    },
  },

  { "rcarriga/nvim-notify", enabled = false },

  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
    opts = {
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
    },
  },
}
