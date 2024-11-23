return {
  { "echasnovski/mini.nvim", version = "*" },
  {
    "echasnovski/mini.icons",
    version = "*",
    config = function()
      require("mini.icons").setup()
    end,
  },
  config = function()
    require("mini.statusline").setup()
  end,
}
