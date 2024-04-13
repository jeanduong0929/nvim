return {
  "folke/tokyonight.nvim",
  event = "VimEnter",
  config = function()
    require("tokyonight").setup({
      transparent = true,
    })

    vim.cmd.colorscheme("tokyonight-moon")
  end,
}
