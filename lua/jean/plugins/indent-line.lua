local status, indent = pcall(require, "indent_blankline")
if not status then
	print("indent-blankline not found")
	return
end

local opt = vim.opt

opt.list = true
opt.listchars = {
	tab = "▸ ",
	trail = "·",
	extends = "❯",
	precedes = "❮",
}

indent.setup({
	char = "▏",
	buftype_exclude = { "terminal" },
	filetype_exclude = { "help", "packer", "alpha", "NvimTree", "Trouble", "Outline" },
	show_trailing_blankline_indent = false,
	show_first_indent_level = false,
	show_current_context = true,
	context_patterns = {
		"class",
		"function",
		"method",
		"block",
		"list_literal",
		"selector",
		"^if",
		"^table",
		"if_statement",
		"while",
		"for",
		"function_call",
	},
})
