return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      float_opts = {
        border = "curved",
        colors = "white",
      },
    },
    keys = {
      {
        "<leader>f/",
        function()
          vim.cmd("ToggleTerm direction=float")
        end,
      },
    },
  },
}
