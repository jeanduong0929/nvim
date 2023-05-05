local status1, alpha = pcall(require, "alpha")
if not status1 then
	return
end

local status2, dashboard = pcall(require, "alpha.themes.dashboard")
if not status2 then
	return
end

-- Set header
dashboard.section.header.val = {
	"                                                    ",
	" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
	"                                                    ",
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("n", "  > New File", "<CMD>ene!<CR>"),
	dashboard.button("f", "  > Find File", "<CMD>Telescope find_files<CR>"),
	dashboard.button("r", "  > Recent Files", "<CMD>Telescope oldfiles<CR>"),
	dashboard.button("t", "  > Find in Files", "<CMD>Telescope live_grep<CR>"),
	dashboard.button("c", "  > Configuration", "<CMD>cd $HOME/.config/nvim | Telescope find_files<CR>"),
}
dashboard.section.buttons.opts.hl = "Comment"

-- Send config to alpha
alpha.setup(dashboard.opts)
