
require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true, -- enable this to make the background
    styles = {
        comments = { "italic" },
        functions = { "italic" },
        keywords = { "italic" },
    },
})

vim.cmd('colorscheme catppuccin')


function ColorMyPencil(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none"}) 
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- make number sidebar transparent color
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none"})
    -- make line number background transparent
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none"})
    -- make warnings in gutter have transparent backgroungrand
end

-- ColorMyPencil()
