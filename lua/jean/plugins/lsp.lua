-- safely import lsp-zero
local status, lsp = pcall(require, "lsp-zero")

-- Exit if lsp-zero is not available
if not status then
	print("Error loading lsp-zero: " .. lsp)
	return
end

-- Import lsp-zero with preset configuration
lsp.preset({})

-- Define on-attach function for lsp
lsp.on_attach(function(client, bufnr)
	-- Define options for keymap
	local opts = { buffer = bufnr, remap = false }

	-- Set key bindings for lsp functions
	vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
	vim.keymap.set("n", "gc", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	vim.keymap.set("n", "<C-k>", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
	vim.keymap.set("n", "<C-j>", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)

	-- Enable automatic formatting for the buffer
	lsp.buffer_autoformat()
end)

-- Set diagnostic sign icons for lsp
lsp.set_sign_icons({
	error = "✘",
	warn = "▲",
	hint = "⚑",
	info = "»",
})

-- Setup lsp
lsp.setup()
