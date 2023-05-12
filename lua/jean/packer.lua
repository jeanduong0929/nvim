vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Package Manager
	use("wbthomason/packer.nvim")

	-- Indentation guides
	use({ "lukas-reineke/indent-blankline.nvim" })

	-- Syntax colorizer
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Dashboard
	use({ "goolord/alpha-nvim" })

	-- Telescope - Fuzzy finder and file browser
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- File browser extension for Telescope
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})

	-- Treesitter - Syntax highlighting and parsing
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- LSP helper for null-ls
	use({ "jose-elias-alvarez/null-ls.nvim" })

	-- Statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Autopairs
	use({ "windwp/nvim-autopairs" })

	-- Auto tag closing
	use({ "windwp/nvim-ts-autotag" })

	-- AI-powered code completion
	use("github/copilot.vim")

	-- Zero-configuration LSP client
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			{
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		},
	})

	-- File explorer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Cursor movement and navigation
	use({
		"numToStr/Navigator.nvim",
		config = function()
			require("Navigator").setup()
		end,
	})

	-- Commenting
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({})
		end,
	})
end)
