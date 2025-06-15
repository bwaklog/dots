-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local which_key = require("which-key")

--@type which_key.Spec
local general_map = {
  {
    "<leader>E",
    function()
      require("oil").open(".")
    end,
    desc = "Open oil in root directory",
  },
  {
    "<leader>F",
    function()
      require("neo-tree.command").execute({})
    end,
    desc = "Open Neotree",
  },
}

which_key.add(general_map)
