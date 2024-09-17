return {
  -- amongst your other plugins
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  -- or
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {--[[ things you want to change go here]]
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
