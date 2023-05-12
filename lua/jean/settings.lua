vim.opt.termguicolors = true

-- Set cursor style to default
vim.opt.guicursor = ""

-- Enable line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set tab width and indent width to 2 spaces, and use spaces for indentation
vim.opt.numberwidth = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Automatically indent new lines to match the previous line
vim.opt.autoindent = true

-- Ignore case when searching for text
vim.opt.ignorecase = true

-- Function to set color of line number
function vim.set_line_number_color()
  -- Define hex color codes for foreground and background
  local fg_color = "#91bad6" -- Yellow

  -- Convert hex color codes to decimal
  local fg_decimal = tonumber(fg_color:sub(2), 16)

  -- Define color group for line number column
  vim.api.nvim_set_hl(0, "LineNr", {
    foreground = fg_decimal,
  })
end

vim.cmd "autocmd VimEnter * lua vim.set_line_number_color()"
