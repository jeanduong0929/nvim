-- Keymap module from vim
local keymap = vim.keymap

-- Set keymaps for different modes and actions

-- Normal mode
keymap.set("n", "x", '"_x') -- Delete current character without adding to clipboard
keymap.set("n", "<space>h", ":noh<cr>") -- Clear search highlights
keymap.set("n", "+", "<C-a>") -- Increment numbers
keymap.set("n", "-", "<C-x>") -- Decrement numbers
keymap.set("n", "dw", 'vb"_d') -- Delete a word backwards
keymap.set("n", "df", "V$%") -- Highlight the whole function
keymap.set("n", "dv", "v%") -- Highlight the body of the function
keymap.set("n", "D", '"_dd') -- Delete a line without adding to clipboard
keymap.set("n", "E", "$") -- Go to end of line
keymap.set("n", "B", "0") -- Go to beginning of line
keymap.set("n", "<C-a>", "gg<S-v>G") -- Select all text
keymap.set("n", "sb", ":split<Return><C-w>w") -- Split window horizontally and move to it
keymap.set("n", "sr", ":vsplit<Return><C-w>w") -- Split window vertically and move to it
keymap.set("n", "<space>", "<C-w>w") -- Move to next window
keymap.set("n", "<C-l>", ":NavigatorRight<CR>") -- Move to right window (using Navigator)
keymap.set("n", "<C-h>", ":NavigatorLeft<CR>") -- Move to left window (using Navigator)
keymap.set("n", "<C-k>", ":NavigatorUp<CR>") -- Move to upper window (using Navigator)
keymap.set("n", "<C-j>", ":NavigatorDown<CR>") -- Move to lower window (using Navigator)
keymap.set("n", "<space>ff", ":Telescope find_files<cr>") -- Open Telescope file finder
keymap.set("n", "<space>fs", ":Telescope live_grep<cr>") -- Open Telescope live grep
keymap.set("n", "<space>e", ":NvimTreeToggle<cr>") -- Toggle NvimTree explorer

-- Insert mode
keymap.set("i", "jj", "<esc>") -- Exit insert mode with "jj"
keymap.set("i", "dw", "<C-w>") -- Delete a word backwards

-- Visual mode
keymap.set("v", "Y", ":y+<CR>") -- Yank (copy) line to clipboard
keymap.set("v", "y", '"+y') -- Yank (copy) highlighted text to clipboard
