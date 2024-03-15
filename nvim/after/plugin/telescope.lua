local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
-- get buffers
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
--[[
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")} );
end)
]]--
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ch', builtin.command_history, {})
vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
-- vim.keymap.set('n', '<leader>ac', builtin.autocommands, {})

-- some other cool ones
vim.keymap.set('n', '<leader>mp', builtin.man_pages, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sc', builtin.spell_suggest, {})

vim.keymap.set('n', '<leader>vim', builtin.vim_options, {})

require('telescope').setup {
    pickers = {
        find_files = {
            hidden = true
        }
    }
}
