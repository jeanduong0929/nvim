local lsp = require("lsp-zero").preset({})

------------------------------- AUTOCOMPLETION -------------------------------

local cmp = require("cmp")
local cmp_select_opts = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
	},
	mapping = {
		["<C-e>"] = cmp.mapping.abort(),
		["<C-k>"] = cmp.mapping.select_prev_item(cmp_select_opts),
		["<C-j>"] = cmp.mapping.select_next_item(cmp_select_opts),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
})

------------------------------- LSP -------------------------------

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
	vim.keymap.set("n", "gc", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	vim.keymap.set("n", "<C-k>", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
	vim.keymap.set("n", "<C-j>", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)

	lsp.buffer_autoformat()
end)

-- lsp icons
lsp.set_sign_icons({
	error = "✘",
	warn = "▲",
	hint = "⚑",
	info = "»",
})

------------------------------- FORMATTING -------------------------------

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
	},
})

lsp.setup()
