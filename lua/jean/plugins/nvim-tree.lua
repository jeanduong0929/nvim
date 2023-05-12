-- Safely import nvim-tree
local status, nvim_tree = pcall(require, "nvim-tree")

-- Exit if nvim-tree is not available
if not status then
	print("Tried loading nvim-tree ... unsuccessfully.")
	return
end

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Configure nvim-tree
nvim_tree.setup({
	-- Don't show dotfiles
	filters = { dotfiles = false },
	-- Hijack netrw, cursor, and sync root with current working directory
	disable_netrw = true,
	hijack_netrw = true,
	hijack_cursor = true,
	hijack_unnamed_buffer_when_opening = false,
	sync_root_with_cwd = true,
	-- Update the focused file but not the root
	update_focused_file = {
		enable = true,
		update_root = false,
	},
	-- Configure the view
	view = {
		adaptive_size = false,
		side = "left",
		width = 30,
		preserve_window_proportions = true,
	},
	-- Disable git integration
	git = {
		enable = false,
		ignore = true,
	},
	-- Enable filesystem watchers
	filesystem_watchers = { enable = true },
	-- Configure actions
	actions = { open_file = { resize_window = true } },
	-- Configure the renderer
	renderer = {
		root_folder_label = false,
		highlight_git = false,
		highlight_opened_files = "none",
		indent_markers = { enable = false },
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = false,
			},
			glyphs = {
				default = "󰈚",
				symlink = "",
				folder = {
					default = "󰉋",
					empty = "",
					empty_open = "",
					open = "",
					symlink = "",
					symlink_open = "",
					arrow_open = "",
					arrow_closed = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
})
