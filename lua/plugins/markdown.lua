return {
  "iamcco/markdown-preview.nvim",
  keys = {
    { "<leader>md", "<cmd>MarkdownPreviewToggle<cr>", { noremap = true, silent = true } },
  },
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}
