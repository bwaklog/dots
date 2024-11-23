vim.opt.tabstop = 4
vim.opt.list = true
vim.opt.relativenumber = true

-- Define which characters to show for specific whitespace
-- vim.opt.listchars:append("")
vim.opt.showbreak = "↪"
-- vim.opt.listchars:append("eol:↴, tab:→ ,trail:·,extends:→,precedes:←,space:·")
vim.opt.listchars:append("tab:→ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨")

-- Space as <Leader>.
vim.g.mapleader = ' '
-- \ as <LocalLeader>.
vim.g.maplocalleader = '\\'
vim.opt.clipboard = "unnamedplus"
