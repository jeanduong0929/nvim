return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- Disable hover keymap
    keys[#keys + 1] = { "K", false }

    -- change the hover keymap
    keys[#keys + 1] = { "<leader>K", "<cmd>lua vim.lsp.buf.hover()<cr>" }
  end,
}
