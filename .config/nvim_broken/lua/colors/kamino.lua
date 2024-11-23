-- Define reusable color variables
local colors = {
	bg = "#eedfc4",
	fg = "#4e4e4e",
	fg2 = "#5c5c5c",
	fg3 = "#6a6a6a",
	fg4 = "#787878",
	bg2 = "#dbcdb4",
	bg3 = "#c8bba5",
	bg4 = "#b5a995",
	keyword = "#725569",
	builtin = "#795551",
	const = "#555e78",
	comment = "#7d746a",
	func = "#54644c",
	str = "#6c5c47",
	type = "#386572",
	var = "#3c675f",
	warning = "#ff0000",
	warning2 = "#ff8800",
}

-- Set terminal color scheme
vim.g.terminal_color_0 = colors.bg
vim.g.terminal_color_1 = colors.warning
vim.g.terminal_color_2 = colors.keyword
vim.g.terminal_color_3 = colors.bg4
vim.g.terminal_color_4 = colors.func
vim.g.terminal_color_5 = colors.builtin
vim.g.terminal_color_6 = colors.fg3
vim.g.terminal_color_7 = colors.str
vim.g.terminal_color_8 = colors.bg2
vim.g.terminal_color_9 = colors.warning2
vim.g.terminal_color_10 = colors.fg2
vim.g.terminal_color_11 = colors.var
vim.g.terminal_color_12 = colors.type
vim.g.terminal_color_13 = colors.const
vim.g.terminal_color_14 = colors.fg4
vim.g.terminal_color_15 = colors.comment

-- Set the color scheme name
vim.g.colors_name = "kamino"

-- Enable true color support
vim.opt.termguicolors = true

-- Define highlight groups
local hi = vim.api.nvim_set_hl

-- UI highlight groups
hi(0, "Normal", { fg = colors.fg, bg = colors.bg })
hi(0, "Cursor", { fg = colors.bg, bg = colors.fg })
hi(0, "CursorLine", { bg = colors.bg2 })
hi(0, "CursorLineNr", { fg = colors.str, bg = colors.bg })
hi(0, "CursorColumn", { bg = colors.bg2 })
hi(0, "ColorColumn", { bg = colors.bg2 })
hi(0, "FoldColumn", { fg = colors.comment, bg = colors.bg2 })
hi(0, "SignColumn", { fg = colors.comment, bg = colors.bg2 })
hi(0, "LineNr", { fg = colors.fg2, bg = colors.bg2 })
hi(0, "CursorLineNr", { fg = colors.fg, bg = colors.bg2 })
hi(0, "VertSplit", { fg = colors.fg3, bg = colors.bg3 })
hi(0, "MatchParen", { fg = colors.warning2, gui = "underline" })
hi(0, "StatusLine", { fg = colors.fg2, bg = colors.bg3, gui = "bold" })
hi(0, "Pmenu", { fg = colors.fg, bg = colors.bg2 })
hi(0, "PmenuSel", { bg = colors.bg3 })
hi(0, "IncSearch", { fg = colors.bg, bg = colors.keyword })
hi(0, "Search", { gui = "underline" })
hi(0, "Directory", { fg = colors.const })
hi(0, "Folded", { fg = colors.fg4, bg = colors.bg })
hi(0, "WildMenu", { fg = colors.str, bg = colors.bg })

-- Syntax highlighting groups
hi(0, "Boolean", { fg = colors.const })
hi(0, "Character", { fg = colors.const })
hi(0, "Comment", { fg = colors.comment })
hi(0, "Conditional", { fg = colors.keyword })
hi(0, "Constant", { fg = colors.const })
hi(0, "Todo", { bg = colors.bg })
hi(0, "Define", { fg = colors.keyword })
hi(0, "DiffAdd", { fg = "#000000", bg = "#bef6dc", gui = "bold" })
hi(0, "DiffDelete", { fg = colors.bg2 })
hi(0, "DiffChange", { bg = "#5b76ef", fg = "#ffffff" })
hi(0, "DiffText", { fg = "#ffffff", bg = "#ff0000", gui = "bold" })
hi(0, "ErrorMsg", { fg = colors.warning, bg = colors.bg2, gui = "bold" })
hi(0, "WarningMsg", { fg = colors.fg, bg = colors.warning2 })
hi(0, "Float", { fg = colors.const })
hi(0, "Function", { fg = colors.func })
hi(0, "Identifier", { fg = colors.type, gui = "italic" })
hi(0, "Keyword", { fg = colors.keyword, gui = "bold" })
hi(0, "Label", { fg = colors.var })
hi(0, "NonText", { fg = colors.bg4, bg = colors.bg2 })
hi(0, "Number", { fg = colors.const })
hi(0, "Operator", { fg = colors.keyword })
hi(0, "PreProc", { fg = colors.keyword })
hi(0, "Special", { fg = colors.fg })
hi(0, "SpecialKey", { fg = colors.fg2, bg = colors.bg2 })
hi(0, "Statement", { fg = colors.keyword })
hi(0, "StorageClass", { fg = colors.type, gui = "italic" })
hi(0, "String", { fg = colors.str })
hi(0, "Tag", { fg = colors.keyword })
hi(0, "Title", { fg = colors.fg, gui = "bold" })
hi(0, "Todo", { fg = colors.fg2, gui = "inverse,bold" })
hi(0, "Type", { fg = colors.type })
hi(0, "Underlined", { gui = "underline" })

-- Ruby Highlighting
hi(0, "rubyAttribute", { fg = colors.builtin })
hi(0, "rubyLocalVariableOrMethod", { fg = colors.var })
hi(0, "rubyGlobalVariable", { fg = colors.var, gui = "italic" })
hi(0, "rubyInstanceVariable", { fg = colors.var })
hi(0, "rubyKeyword", { fg = colors.keyword })
hi(0, "rubyKeywordAsMethod", { fg = colors.keyword, gui = "bold" })
hi(0, "rubyClassDeclaration", { fg = colors.keyword, gui = "bold" })
hi(0, "rubyClass", { fg = colors.keyword, gui = "bold" })
hi(0, "rubyNumber", { fg = colors.const })

-- Python Highlighting
hi(0, "pythonBuiltinFunc", { fg = colors.builtin })

-- Go Highlighting
hi(0, "goBuiltins", { fg = colors.builtin })

-- Javascript Highlighting
hi(0, "jsBuiltins", { fg = colors.builtin })
hi(0, "jsFunction", { fg = colors.keyword, gui = "bold" })
hi(0, "jsGlobalObjects", { fg = colors.type })
hi(0, "jsAssignmentExps", { fg = colors.var })

-- Html Highlighting
hi(0, "htmlLink", { fg = colors.var, gui = "underline" })
hi(0, "htmlStatement", { fg = colors.keyword })
hi(0, "htmlSpecialTagName", { fg = colors.keyword })

-- Markdown Highlighting
hi(0, "mkdCode", { fg = colors.builtin })
