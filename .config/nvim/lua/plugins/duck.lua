return {
  "tamton-aquib/duck.nvim",
  -- add keybindings

  keys = {
    {
      "<leader>rd",
      function()
        require("duck").hatch("🦆", 2.5)
      end,
      desc = "spawn a duck",
    },
    {
      "<leader>rk",
      function()
        require("duck").cook_all()
      end,
      desc = "kill all ducks",
    },
  },
}
