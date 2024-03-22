return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", "<cmd>Neotree reveal=./<cr>", { noremap = true, silent = true } },
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
      },
    })
  end,
}
