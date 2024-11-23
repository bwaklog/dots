-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("nvim-treesitter.install").compilers = { "zig" }

-- require("colors.kamino")
vim.cmd("highlight EndOfBuffer guifg=#5f5f5f")
-- set fillchars=eob:~
vim.opt.fillchars.eob = "~"
