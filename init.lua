-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Convert the vimscript to lua let g:loaded_python3_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
