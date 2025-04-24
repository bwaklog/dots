return {
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
        require("oil").open(".")
      end)
      require("oil").setup({
        default_file_explorer = true,
        view_options = {
          show_hidden = true,
        },
        columns = {
          "permissions",
          "size",
          "mtime",
        },
      })
    end,
  },
}
