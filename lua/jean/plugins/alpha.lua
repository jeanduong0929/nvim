-- Import alpha and the dashboard theme from alpha
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Configure dashboard header
dashboard.section.header.val = {
	"                                                     ",
	"                                                     ",
	"                                                     ",
	"                                                     ",
	"                                                     ",
	"                                                     ",
	"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
	"                                                     ",
	"                                                     ",
	"                                                     ",
}

-- Configure dashboard buttons
dashboard.section.buttons.val = {
	dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
	dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("s", "  > Settings", "<CMD>cd $HOME/.config/nvim | Telescope find_files<CR>"),
	dashboard.button("q", " > Quit NVIM", ":qa<CR>"),
}

-- Apply the configuration to alpha
alpha.setup(dashboard.opts)

-- Disable folding for alpha buffers
vim.cmd("autocmd FileType alpha setlocal nofoldenable")
