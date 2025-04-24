-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mini.icons").setup()
-- require("mini.statusline").setup()
-- require("mini.notify").setup()

vim.keymap.set("n", "<leader>/", require("telescope.builtin").live_grep, { desc = "Telescope live grep" })
-- vim.diagnostic.config({ virtual_lines = true })
-- vim.opt.fillchars:append({ eob = "~" })

vim.wo.number = false
vim.wo.relativenumber = false
-- vim.o.winborder = "rounded"

-- vim.opt.colorcolumn = "80"
-- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#3c3836" })
