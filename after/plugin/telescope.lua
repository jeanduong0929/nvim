local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["n"] = {
          -- your custom normal mode mappings
          ["D"] = fb_actions.remove,
          ["h"] = fb_actions.goto_parent_dir,
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set("n", "<space>e", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",               -- starting directory for file browser
    cwd = vim.fn.expand('%:p:h'), -- base directory for any file browser command
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
