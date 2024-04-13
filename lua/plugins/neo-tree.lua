return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>ef", "<cmd>Neotree reveal<cr>", { noremap = true, silent = true } },
  },
  config = function()
    require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
      window = {
        position = "right",
      },
    })
  end,
}
