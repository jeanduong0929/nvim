local status, autopair = pcall(require, "nvim-autopairs")

if not status then
	print("Error loading autopair: " .. autopair)
	return
end

autopair.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" }, -- it will not add pair on that treesitter node
		javascript = { "template_string" },
		java = false, -- don't check treesitter on java
	},
})
