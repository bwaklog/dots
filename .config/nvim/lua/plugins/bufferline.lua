return {
  "akinsho/bufferline.nvim",
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        mode = "buffers",
        indicator = {
          style = "icon",
        },
        separator_style = "thin",
        style_preset = bufferline.style_preset.minimal,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_buffer_icons = true,
        diagnostics = "nvim_lsp",
        color_icons = false,
        always_show_bufferline = false,
        auto_toggle_bufferline = true,
      },
    })
  end,
}
