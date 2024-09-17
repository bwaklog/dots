-- get that chonk cursor
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.list = true
vim.opt.showbreak = "↪"
vim.opt.listchars:append("tab:→ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"
vim.cmdheight=1

vim.g.mapleader = " "
