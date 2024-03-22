return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
  },
  keys = {
    { "<leader>fw", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true } },
    { "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true, silent = true } },
  },
  config = function()
    local fb_actions = require("telescope").extensions.file_browser.actions

    require("telescope").setup({
      extensions = {
        file_browser = {
          previewer = false,
          theme = "dropdown",
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              ["<C-a>"] = fb_actions.create,
              ["<C-d>"] = fb_actions.remove,
            },
            ["n"] = {},
          },
        },
      },
    })
    -- To get telescope-file-browser loaded and working with telescope,
    -- you need to call load_extension, somewhere after setup function:
    require("telescope").load_extension("file_browser")
  end,
}
