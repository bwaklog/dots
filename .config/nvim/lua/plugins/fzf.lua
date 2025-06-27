return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("fzf-lua").setup({
      winopts = {
        border = "none",
        height = 1,
        width = 1,
        row = 1,

        preview = {
          border = "none",
        },
      },
    })
  end,
}
