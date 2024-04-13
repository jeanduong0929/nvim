return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fw", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true } },
  },
  config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["sr"] = actions.select_vertical,
            ["sb"] = actions.select_horizontal,
          },
        },
      },
    })
  end,
}
