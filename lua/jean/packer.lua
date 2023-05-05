vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" }) -- colorizer
	use({ "nvim-tree/nvim-web-devicons" }) -- web devicons
	use({ "nvim-lua/plenary.nvim" }) -- plenary
	use({ "goolord/alpha-nvim" }) -- dashboard
	use({ "nvim-telescope/telescope.nvim" }) -- telescope
	use({ "nvim-telescope/telescope-file-browser.nvim" }) -- file browser
	use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } }) -- treesitter
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- null-ls
	use({ "nvim-lualine/lualine.nvim" }) -- lualine
	use({ "windwp/nvim-autopairs" }) -- autopairs
	use({ "windwp/nvim-ts-autotag" }) -- autotag
	use("github/copilot.vim") -- copilot
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})
end)
