-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

return {
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   keys = {
  --     {
  --       "<leader>fQ",
  --       function()
  --         require("telescope.builtin").quickfix()
  --       end,
  --       desc = "view quickfix list",
  --     },
  --   },
  -- },
  {
    "folke/zen-mode.nvim",
    keys = {
      {
        "<leader>TZ",
        function()
          require("zen-mode.view").open()
        end,
      },
    },
  },
}
