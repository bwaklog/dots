return {
  {
    "folke/snacks.nvim",

    --     config = function()
    --       require("snacks.dashboard").setup({
    --         header = [[
    -- ███████╗██╗   ██╗███████╗██╗  ██╗██╗
    -- ██╔════╝██║   ██║██╔════╝██║  ██║██║
    -- ███████╗██║   ██║███████╗███████║██║
    -- ╚════██║██║   ██║╚════██║██╔══██║██║
    -- ███████║╚██████╔╝███████║██║  ██║██║
    -- ╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝]],
    --       })
    --     end,

    opts = {
      scroll = { enabled = false },
      dashboard = {
        enabled = true,
        sections = {
          {
            section = "terminal",
            cmd = "chafa ~/.config/nvim/grogu.jpg --format symbols --symbols vhalf --size=45; sleep .1",
            height = 17,
            padding = 1,
          },
          {
            pane = 2,
            icon = " ",
            title = "Git Status",
            section = "terminal",
            enabled = function()
              return Snacks.git.get_root() ~= nil
            end,
            cmd = "git status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
          },
          {
            pane = 2,
            icon = "",
            title = "Git Log",
            section = "terminal",
            enabled = function()
              return Snacks.git.get_root() ~= nil
            end,
            cmd = "git log --oneline --graph --decorate -n 7",
            height = 10,
            padding = 1,
            ttl = 1,
            indent = 3,
          },
          { pane = 2, section = "startup" },
          -- {
          --   pane = 2,
          --   { section = "keys", gap = 1, padding = 1 },
          --   { section = "startup" },
          -- },
        },
      },
    },
  },
}
