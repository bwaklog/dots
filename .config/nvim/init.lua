-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mini.icons").setup()
-- require("mini.statusline").setup()
-- require("mini.notify").setup()

vim.keymap.set("n", "<leader>/", require("telescope.builtin").live_grep, { desc = "Telescope live grep" })
