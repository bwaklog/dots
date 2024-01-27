require("noice").setup({
    lsp = {
        override = {
            ["vimlsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylised_markdown"] = true,
            ["cmp.entry.get_documentation"] = true
        },
    },

    bottom_search = false, -- classic vim bottom cmdline for search
    command_pallet = true, -- enable command pallet
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
})
