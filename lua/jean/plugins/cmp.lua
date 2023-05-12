local status, cmp = pcall(require, "cmp")

if not status then
	print("Error loading cmp: " .. cmp)
	return
end

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
