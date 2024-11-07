-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("nvim-treesitter.install").compilers = { "zig" }

-- vim.api.nvim_set_keymap("i", "<Up>", "<NOP>", { noremap = true, silent = false })
-- vim.api.nvim_set_keymap("i", "<Down>", "<NOP>", { noremap = true, silent = false })
-- vim.api.nvim_set_keymap("i", "<Right>", "<NOP>", { noremap = true, silent = false })
-- vim.api.nvim_set_keymap("i", "<Left>", "<NOP>", { noremap = true, silent = false })
--
-- vim.api.nvim_set_keymap("n", "<Up>", "<NOP>", { noremap = true, silent = false })
-- vim.api.nvim_set_keymap("n", "<Down>", "<NOP>", { noremap = true, silent = false })
-- vim.api.nvim_set_keymap("n", "<Right>", "<NOP>", { noremap = true, silent = false })
-- vim.api.nvim_set_keymap("n", "<Left>", "<NOP>", { noremap = true, silent = false })
