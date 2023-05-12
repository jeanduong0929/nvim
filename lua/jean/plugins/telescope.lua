-- Import telescope safely
local status, telescope = pcall(require, "telescope")

-- Exit if telescope is not available
if not status then
	print("Error loading telescope: " .. telescope)
	return
end

-- Import required modules
local actions = require("telescope.actions")
local fb_actions = require("telescope").extensions.file_browser.actions

-- Setup telescope
telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			hijack_netrw = true,
			mappings = {
				n = {
					["D"] = fb_actions.remove,
					["h"] = fb_actions.goto_parent_dir,
				},
			},
		},
	},
})

-- Load file_browser extension
telescope.load_extension("file_browser")

-- Set keymap for file_browser
vim.keymap.set("n", "<space>fb", function()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = vim.fn.expand("%:p:h"),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 40 },
	})
end)
