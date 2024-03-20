-- vim command to toggle between opt.wrap = true and false
function ToggleWrap()
    if vim.opt.wrap:get() then
        vim.opt.wrap = false
    else
        vim.opt.wrap = true
    end
end

-- mapping function to <leader>tw
vim.keymap.set("n", "<leader>tw", ":lua ToggleWrap()<CR>") 
