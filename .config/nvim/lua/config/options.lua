-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable the display of whitespace characters
vim.opt.list = true

-- Define which characters to show for specific whitespace
-- vim.opt.listchars:append("")
vim.opt.showbreak = "↪"
-- vim.opt.listchars:append("eol:↴, tab:→ ,trail:·,extends:→,precedes:←,space:·")
vim.opt.listchars:append("tab:→ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨")
