-- Safely import catppuccin
local status, cat = pcall(require, "catppuccin")

if not status then
	print("Error loading catppuccino: " .. cat)
	return
end

-- Configure catppuccin
cat.setup({
	flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
	background = {
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true,
	show_end_of_buffer = false, -- Hide '~' characters after the end of buffers
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	no_italic = false, -- Disable forced no italic
	no_bold = false, -- Disable forced no bold
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
	},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		notify = false,
		mini = false,
	},
})

-- Set colorscheme to catppuccin
vim.cmd.colorscheme("catppuccin")
